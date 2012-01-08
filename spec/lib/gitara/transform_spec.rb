require 'spec_helper'

describe "Transform" do
  let(:transform) { Transform.new }

  describe "voice" do
    it "can be transformed from hash to object" do
      hash = {:string=>"a", :identifier=>"voice"}
      voice = transform.apply(hash)
      voice.should be_a(Node::Voice)
      voice.value.should == 'a'
    end
  end

  describe "tab" do
    it "can be transformed from hash to object" do
      hash = {:identifier=>"tab", :method_calls => []}
      tab = transform.apply(hash)
      tab.should be_a(Node::Tab)
      tab.children.should == []
    end

    it "can be transformed with children" do
      voice = Node::Voice.new(:value => 'a')
      hash = {
        :identifier=>"tab",
        :method_calls => [voice]
      }
      tab = transform.apply(hash)
      tab.should be_a(Node::Tab)
      tab.children.should == [voice]
    end
  end
end
