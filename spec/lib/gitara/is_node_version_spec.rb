require 'spec_helper'

describe IsNodeVersion do
  class DummyVersion < Valuable
    include IsNodeVersion

    has_value :node
  end

  describe "prefix" do
    it "should be by default the first letter of the class" do
      dummy_version = DummyVersion.new
      dummy_version.extend(IsNodeVersion)
      dummy_version.prefix.should == 'd'
    end
  end

  describe "definition_name" do
    it "should include the node's class and the node's name" do
      dummy_version = DummyVersion.new(:node => Node::Base.new(:name => 'some node'))
      dummy_version.definition_name.should == 'dBaseSomeNode'
    end
  end

  describe "call_name" do
    it "should be the call version of the definition name" do
      dummy_version = DummyVersion.new(:node => Node::Base.new(:name => 'some node'))
      dummy_version.call_name.should == '\dBaseSomeNode'
    end
  end

  describe "value" do
    it "should be the call names of its children" do
      node = Node::Base.new(:children => [
        Node::Base.new(:name => :First),
        Node::Base.new(:name => :Second)
      ])
      node_version = DummyVersion.new(:node => node)
      node_version.value.should == '\dBaseFirst \dBaseSecond'
    end
  end

  describe "children" do
    it "should be versionized versions of the node's children" do
      parent = Node::Base.new(:name => 'parent')
      child = Node::Base.new(:name => 'child')
      parent.add child

      node_version = DummyVersion.new(:node => parent)

      children = node_version.children
      children.should have(1).child
      children[0].node.should == child
      children[0].should be_a(DummyVersion)
    end
  end
end

