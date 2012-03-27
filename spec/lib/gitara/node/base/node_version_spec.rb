require 'spec_helper'

describe Gitara::Node::Base::NodeVersion do
  describe "#prefix" do
    it "should be by default the first letter of the class" do
      version = Node::Base::NodeVersion.new
      version.prefix.should == 'n'
    end
  end

  describe "#definition_name" do
    it "should include the node's class and the node's name" do
      version = Node::Base::NodeVersion.new(:node => FactoryGirl.build(:base, :name => 'some node'))
      version.definition_name.should == 'nBaseSomeNode'
    end
  end

  describe "#call_name" do
    it "should be the call version of the definition name" do
      version = Node::Base::NodeVersion.new(:node => FactoryGirl.build(:base, :name => 'some node'))
      version.call_name.should == '\nBaseSomeNode'
    end
  end

  describe "#value" do
    it "should be the call values of its definition_children" do
      node = FactoryGirl.build(:base, :children => [
        FactoryGirl.build(:base, :name => :First),
        FactoryGirl.build(:base, :name => :Second)
      ])
      node_version = Node::Base::NodeVersion.new(:node => node)
      node_version.value.should == '\nBaseFirst \nBaseSecond'
    end
  end

  describe "#definition_children" do
    it "should be versionized versions of the node's definition_children" do
      parent = FactoryGirl.build(:base, :name => 'parent')
      child = FactoryGirl.build(:base, :name => 'child')
      parent.add child

      node_version = Node::Base::NodeVersion.new(:node => parent)

      children = node_version.definition_children
      children.should have(1).child
      children[0].node.should == child
      children[0].should be_a(Node::Base::NodeVersion)
    end
  end

  describe "#call_value" do
    it "should be the call name if we want to render the node's definition name in the lilypond output" do
      node = FactoryGirl.build(:base, :name => 'parent')
      node_version = Node::Base::NodeVersion.new(:node => node)
      node_version.call_value.should == '\nBaseParent'
    end

    it "should be the call value of the node if we don't want to render the node's definition name in the lilypond output" do
      node = FactoryGirl.build(:base, :name => 'name')
      node_version = Node::Base::NodeVersion.new(:node => node)
      node.should_receive(:call_value).with(node_version).and_return("todo { }")
      node_version.call_value.should == "todo { }"
    end
  end
end

