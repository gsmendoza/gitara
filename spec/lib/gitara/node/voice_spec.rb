require 'spec_helper'

describe Node::Voice do
  describe "parse_attributes_from_text(text)" do
    it "should get the attributes from the text" do
      text = %q|voice: r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|

      voice = Node::Voice.new
      voice.value.should be_nil
      voice.parse_attributes_from_text(text)
      voice.value.should == %q|r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
    end
  end

  describe "definition_name" do
    it "should be the name of the voice in a lilypond variable definition statement" do
      voice = Node::Voice.new(:id => 1)
      voice.definition_name.should == "vOne"
    end
  end

  describe "id_as_word" do
    it "should convert the id to word" do
      voice = Node::Voice.new(:id => 1)
      voice.id_as_word.should == "One"
    end
  end

  describe "stem_type" do
    it "should be the lilypond stem type for the voice" do
      voice = Node::Voice.new(:id => 1)
      voice.stem_type.should == '\voiceOne'
    end
  end

  describe "name" do
    it "should be the variable name of the voice when called inside lilypond" do
      voice = Node::Voice.new(:id => 1)
      voice.name.should == '\vOne'
    end
  end
end
