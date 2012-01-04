require 'spec_helper'

describe "Transform" do
  let(:transform) { Transform.new }

  it "can transform a voice hash to a voice" do
    hash = {:value=>{:string=>"a"}, :method_id=>{:identifier=>"voice"}}
    voice = transform.apply(hash)
    voice.should be_a(Node::Voice)
    voice.value.should == 'a'
  end

  it "can convert an array of voices to a tab" do
    hash = {
      :method_calls => [
        {:value=>{:string=>"a"}, :method_id=>{:identifier=>"voice"}},
        {:value=>{:string=>"b"}, :method_id=>{:identifier=>"voice"}}
      ]
    }

    tab = transform.apply(hash)
    tab.should be_a(Tab)
    tab.voices.size.should == 2
    tab.voices[0].id.should == 1
    tab.voices[1].id.should == 2
  end
end
