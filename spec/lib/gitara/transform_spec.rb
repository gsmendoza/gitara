require 'spec_helper'

describe "Transform" do
  let(:transform) { Transform.new }

  describe "voice" do
    it "can be transformed from hash to object" do
      hash = {:string=>"a", :identifier=>"voice"}
      voice_bar = transform.apply(hash)
      voice_bar.should be_a(Node::VoiceBar)
      voice_bar.value.should == 'a'
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
      voice_bar = Node::VoiceBar.new(:value => 'a')
      hash = {
        :identifier=>"tab",
        :method_calls => [voice_bar]
      }
      tab = transform.apply(hash)
      tab.should be_a(Node::Tab)
      tab.children.should == [voice_bar]
    end
  end

  describe "bar" do
    it "can be transformed from hash to object" do
      hash = {:identifier=>"bar", :method_calls => [], :string => 'Intro'}
      bar = transform.apply(hash)
      bar.should be_a(Node::Bar)
      bar.name.should == 'Intro'
      bar.children.should == []
    end

    it "can be transformed with children" do
      voice_bar = Node::VoiceBar.new(:value => 'a')
      hash = {
        :identifier=>"bar",
        :method_calls => [voice_bar],
        :string => 'Intro'
      }
      bar = transform.apply(hash)
      bar.children.should == [voice_bar]
    end
  end
end
