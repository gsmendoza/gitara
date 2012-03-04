require 'spec_helper'

describe 'VoicedVersion' do
  describe "prefix" do
    it "should be based on the voice's id" do
      voiced_version = FactoryGirl.build(:voiced_version, :node => FactoryGirl.build(:base, :name => 'Intro'), :voice => FactoryGirl.build(:voice, :id => 1))
      voiced_version.prefix.should == 'vOne'
    end
  end

  describe "children" do
    it "should be voiced versions of the node's children" do
      parent = FactoryGirl.build(:base, :name => 'parent')
      child = FactoryGirl.build(:base, :name => 'child')
      parent.add child

      voice = FactoryGirl.build(:voice, :id => 1)

      voiced_version = FactoryGirl.build(:voiced_version, :node => parent, :voice => voice)

      children = voiced_version.children
      children.should have(1).voiced_version
      children[0].node.should == child
      children[0].voice.should == voice
    end
  end
end

