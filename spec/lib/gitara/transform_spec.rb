require 'spec_helper'

describe "Transform" do
  let(:transform) { Transform.new }

  it "can transform a voice hash to a voice" do
    hash = {:value=>{:string=>"a"}, :method_id=>{:identifier=>"voice"}}
    voice = transform.apply(hash)
    voice.should be_a(Node::Voice)
    voice.value.should == 'a'
  end

  it "can add ids to an array of voices" do
    hash = {
      :method_calls => [
        {:value=>{:string=>"a"}, :method_id=>{:identifier=>"voice"}},
        {:value=>{:string=>"b"}, :method_id=>{:identifier=>"voice"}}
      ]
    }

    voices = transform.apply(hash)
    voices.size.should == 2
    voices[0].id.should == 1
    voices[1].id.should == 2
  end
end
