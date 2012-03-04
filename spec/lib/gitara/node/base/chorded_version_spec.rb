require 'spec_helper'

describe 'ChordedVersion' do
  describe "definition_name" do
    it "should include the node's class and the node's name" do
      chorded_version = Node::Base::ChordedVersion.new(:node => Node::Base.new(:name => :Am))
      chorded_version.definition_name.should == 'cBaseAm'
    end
  end

  describe "value" do
    it "should be the call names of its children" do
      node = Node::Base.new(:children => [
        Node::Base.new(:name => :First),
        Node::Base.new(:name => :Second)
      ])
      chorded_version = Node::Base::ChordedVersion.new(:node => node)
      chorded_version.value.should == '\cBaseFirst \cBaseSecond'
    end
  end

  describe "call_name" do
    it "should be the call name of the voiced node's definition name" do
      chorded_version = Node::Base::ChordedVersion.new(:node => Node::Base.new(:name => :Am))
      chorded_version.call_name.should == '\cBaseAm'
    end
  end
end

