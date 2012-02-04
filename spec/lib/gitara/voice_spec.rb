require 'spec_helper'

describe Voice do
  describe "call_name" do
    it "should be the variable name of the node when called inside lilypond" do
      voice = Voice.new(:id => 1)
      voice.call_name.should == '\vOne'
    end
  end

  describe "definition_name" do
    it "should be the name of the voice in a lilypond variable definition statement" do
      voice = Voice.new(:id => 1)
      voice.definition_name.should == "vOne"
    end
  end

  describe "id_as_word" do
    it "should convert the id to word" do
      node = Voice.new(:id => 1)
      node.id_as_word.should == "One"
    end
  end

  describe "stem_type" do
    it "should be the lilypond stem type for the voice" do
      voice = Voice.new(:id => 1)
      voice.stem_type.should == '\voiceOne'
    end
  end
end
