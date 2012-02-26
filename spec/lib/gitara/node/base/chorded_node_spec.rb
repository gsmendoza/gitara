require 'spec_helper'

describe 'ChordedNode' do
  describe "definition_name" do
    it "should include the node's class and the node's name" do
      chorded_node = Node::Base::ChordedNode.new(:node => Node::Base.new(:name => :Am))
      chorded_node.definition_name.should == 'cBaseAm'
    end
  end

  describe "value" do
    it "should be the call names of its children" do
      node = Node::Base.new(:children => [
        Node::Base.new(:name => :First),
        Node::Base.new(:name => :Second)
      ])
      chorded_node = Node::Base::ChordedNode.new(:node => node)
      chorded_node.value.should == '\cBaseFirst \cBaseSecond'
    end
  end

  describe "call_name" do
    it "should be the call name of the voiced node's definition name" do
      chorded_node = Node::Base::ChordedNode.new(:node => Node::Base.new(:name => :Am))
      chorded_node.call_name.should == '\cBaseAm'
    end
  end
end

