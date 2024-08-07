require 'spec_helper'

describe Gitara::Node::Base::VoicedVersion do
  describe "#prefix" do
    it "should be based on the voice's id" do
      voiced_version = FactoryBot.build(:voiced_version, :node => FactoryBot.build(:base, :name => 'Intro'), :voice => FactoryBot.build(:voice, :id => 1))
      expect(voiced_version.prefix).to eq('vOne')
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
      expect(children).to have(1).voiced_version
      expect(children[0].node).to eq(child)
      expect(children[0].voice).to eq(voice)
    end
  end
end

