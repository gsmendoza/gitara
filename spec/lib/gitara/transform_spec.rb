require 'spec_helper'

describe "Transform" do
  let(:transform) { Transform.new }

  describe "voice" do
    it "can be transformed from hash to object" do
      hash = {:value=>{:string=>"a"}, :method_id=>{:identifier=>"voice"}}
      voice = transform.apply(hash)
      voice.should be_a(Node::Voice)
      voice.value.should == 'a'
    end
  end

  describe "tab" do
    it "can be transformed from hash to object" do
      hash = {:method_id=>{:identifier=>"tab"}, :value => nil, :method_calls => []}
      tab = transform.apply(hash)
      tab.should be_a(Tab)
      tab.children.should == []
    end

    it "can be transformed with children" do
      voice = Node::Voice.new(:value => 'a')
      hash = {
        :method_id=>{:identifier=>"tab"},
        :value => nil,
        :method_calls => [voice]
      }
      tab = transform.apply(hash)
      tab.should be_a(Tab)
      tab.children.should == [voice]
    end
  end
end
