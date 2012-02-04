require 'spec_helper'

describe Node::Voice do
  describe "definition_name" do
    it "should be the name of the voice in a lilypond variable definition statement" do
      voice = Node::Voice.new(:id => 1)
      voice.definition_name.should == "vOne"
    end
  end

  describe "stem_type" do
    it "should be the lilypond stem type for the voice" do
      voice = Node::Voice.new(:id => 1)
      voice.stem_type.should == '\voiceOne'
    end
  end
end
