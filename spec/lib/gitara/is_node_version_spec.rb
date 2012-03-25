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
      dummy_version = DummyVersion.new(:node => FactoryGirl.build(:base, :name => 'some node'))
      dummy_version.definition_name.should == 'dBaseSomeNode'
    end
  end

  describe "call_name" do
    it "should be the call version of the definition name" do
      dummy_version = DummyVersion.new(:node => FactoryGirl.build(:base, :name => 'some node'))
      dummy_version.call_name.should == '\dBaseSomeNode'
    end
  end

  describe "value" do
    it "should be the call names of its definition_children" do
      node = FactoryGirl.build(:base, :children => [
        FactoryGirl.build(:base, :name => :First),
        FactoryGirl.build(:base, :name => :Second)
      ])
      node_version = DummyVersion.new(:node => node)
      node_version.value.should == '\dBaseFirst \dBaseSecond'
    end
  end

  describe "definition_children" do
    it "should be versionized versions of the node's definition_children" do
      parent = FactoryGirl.build(:base, :name => 'parent')
      child = FactoryGirl.build(:base, :name => 'child')
      parent.add child

      node_version = DummyVersion.new(:node => parent)

      children = node_version.definition_children
      children.should have(1).child
      children[0].node.should == child
      children[0].should be_a(DummyVersion)
    end
  end
end

