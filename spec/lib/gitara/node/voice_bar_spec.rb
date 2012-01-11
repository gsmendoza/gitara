require 'spec_helper'

describe Node::VoiceBar do
  describe "parse_attributes_from_text(text)" do
    it "should get the attributes from the text" do
      text = %q|voice_bar: r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|

      voice_bar = Node::VoiceBar.new
      voice_bar.value.should be_nil
      voice_bar.parse_attributes_from_text(text)
      voice_bar.value.should == %q|r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
    end
  end

  describe "definition_name" do
    it "should be the name of the voice_bar in a lilypond variable definition statement" do
      voice_bar = Node::VoiceBar.new(:id => 1)
      voice_bar.definition_name.should == "vOne"
    end
  end

  describe "id_as_word" do
    it "should convert the id to word" do
      voice_bar = Node::VoiceBar.new(:id => 1)
      voice_bar.id_as_word.should == "One"
    end
  end

  describe "stem_type" do
    it "should be the lilypond stem type for the voice_bar" do
      voice_bar = Node::VoiceBar.new(:id => 1)
      voice_bar.stem_type.should == '\voiceOne'
    end
  end

  describe "name" do
    it "should be the variable name of the voice_bar when called inside lilypond" do
      voice_bar = Node::VoiceBar.new(:id => 1)
      voice_bar.name.should == '\vOne'
    end
  end
end
