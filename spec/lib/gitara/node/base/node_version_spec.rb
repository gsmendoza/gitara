require 'spec_helper'

describe Gitara::Node::Base::NodeVersion do
  describe "#prefix" do
    it "should be by default the first letter of the class" do
      version = Node::Base::NodeVersion.new
      expect(version.prefix).to == 'n'
    end
  end

  describe "#definition_name" do
    it "should include the node's class and the node's name" do
      version = Node::Base::NodeVersion.new(:node => FactoryBot.build(:base, :name => 'some node'))
      expect(version.definition_name).to == 'nBaseSomeNode'
    end
  end

  describe "#call_name" do
    it "should be the call version of the definition name" do
      version = Node::Base::NodeVersion.new(:node => FactoryBot.build(:base, :name => 'some node'))
      expect(version.call_name).to == '\nBaseSomeNode'
    end
  end

  describe "#value" do
    it "should be the call values of its definition_children" do
      node = FactoryBot.build(:base, :children => [
        FactoryBot.build(:base, :name => :First),
        FactoryBot.build(:base, :name => :Second)
      ])
      node_version = Node::Base::NodeVersion.new(:node => node)
      expect(node_version.value).to == '\nBaseFirst \nBaseSecond'
    end
  end

  describe "#definition_children" do
    it "should be versionized versions of the node's definition_children" do
      parent = FactoryBot.build(:base, :name => 'parent')
      child = FactoryBot.build(:base, :name => 'child')
      parent.add child

      node_version = Node::Base::NodeVersion.new(:node => parent)

      children = node_version.definition_children
      expect(children).to have(1).child
      expect(children[0].node).to == child
      expect(children[0]).to be_a(Node::Base::NodeVersion)
    end
  end

  describe "#call_value" do
    it "should be the call name if we want to render the node's definition name in the lilypond output" do
      node = FactoryBot.build(:base, :name => 'parent')
      node_version = Node::Base::NodeVersion.new(:node => node)
      expect(node_version.call_value).to == '\nBaseParent'
    end

    it "should be the call value of the node if we don't want to render the node's definition name in the lilypond output" do
      node = FactoryBot.build(:base, :name => 'name')
      node_version = Node::Base::NodeVersion.new(:node => node)
      expect(node).to_receive(:call_value).with(node_version).and_return("todo { }")
      expect(node_version.call_value).to == "todo { }"
    end
  end
end

