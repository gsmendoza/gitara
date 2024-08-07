require 'spec_helper'

describe Gitara::Node::Base::VoicedVersion do
  describe "#prefix" do
    it "should be based on the voice's id" do
      voiced_version = FactoryBot.build(:voiced_version, :node => FactoryBot.build(:base, :name => 'Intro'), :voice => FactoryBot.build(:voice, :id => 1))
      voiced_version.prefix.should == 'vOne'
    end
  end

  describe "#definition_children" do
    it "should be voiced versions of the node's definition_children" do
      parent = FactoryBot.build(:base, :name => 'parent')
      child = FactoryBot.build(:base, :name => 'child')
      parent.add child

      voice = FactoryBot.build(:voice, :id => 1)

      voiced_version = FactoryBot.build(:voiced_version, :node => parent, :voice => voice)

      children = voiced_version.definition_children
      children.should have(1).voiced_version
      children[0].node.should == child
      children[0].voice.should == voice
    end
  end
end

