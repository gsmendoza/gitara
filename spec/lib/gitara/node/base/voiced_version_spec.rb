require 'spec_helper'

describe 'VoicedVersion' do
  describe "call_name" do
    it "should be the call name of the voiced node's definition name" do
      voiced_version = Node::Base::VoicedVersion.new(:node => Node::Base.new(:name => 'Intro'), :voice => Voice.new(:id => 1))
      voiced_version.call_name.should == '\vOneBaseIntro'
    end
  end

  describe "definition_name" do
    it "should include the voice's id, the node's class, and the node's name" do
      voiced_version = Node::Base::VoicedVersion.new(:node => Node::Base.new(:name => 'Intro'), :voice => Voice.new(:id => 1))
      voiced_version.definition_name.should == 'vOneBaseIntro'
    end
  end

  describe "children" do
    it "should be voiced versions of the node's children" do
      parent = Node::Base.new(:name => 'parent')
      child = Node::Base.new(:name => 'child')
      parent.add child

      voice = Voice.new(:id => 1)

      voiced_version = Node::Base::VoicedVersion.new(:node => parent, :voice => voice)

      children = voiced_version.children
      children.should have(1).voiced_version
      children[0].node.should == child
      children[0].voice.should == voice
    end
  end
end

