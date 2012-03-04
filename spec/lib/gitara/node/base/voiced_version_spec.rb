require 'spec_helper'

describe 'VoicedVersion' do
  describe "prefix" do
    it "should be based on the voice's id" do
      voiced_version = Node::Base::VoicedVersion.new(:node => Node::Base.new(:name => 'Intro'), :voice => Voice.new(:id => 1))
      voiced_version.prefix.should == 'vOne'
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

