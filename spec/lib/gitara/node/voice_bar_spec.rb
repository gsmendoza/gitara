require 'spec_helper'

describe Node::VoiceBar do
  describe "definition_name" do
    it "should be the name of the voice_bar in a lilypond variable definition statement" do
      voice_bar = Node::VoiceBar.new(:id => 1)
      voice_bar.definition_name.should == "vOne"
    end
  end

  describe "stem_type" do
    it "should be the lilypond stem type for the voice_bar" do
      voice_bar = Node::VoiceBar.new(:id => 1)
      voice_bar.stem_type.should == '\voiceOne'
    end
  end
end
