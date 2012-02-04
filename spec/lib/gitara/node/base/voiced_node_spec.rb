require 'spec_helper'

describe 'VoicedNode' do
  describe "call_name" do
    it "should be the call name of the voiced node's definition name" do
      voiced_node = Node::Base::VoicedNode.new(:node => Node::Base.new(:name => 'Intro'), :voice => Node::Voice.new(:id => 1))
      voiced_node.call_name.should == '\vOneBaseIntro'
    end
  end

  describe "definition_name" do
    it "should include the voice's id, the node's class, and the node's name" do
      voiced_node = Node::Base::VoicedNode.new(:node => Node::Base.new(:name => 'Intro'), :voice => Node::Voice.new(:id => 1))
      voiced_node.definition_name.should == 'vOneBaseIntro'
    end
  end
end

