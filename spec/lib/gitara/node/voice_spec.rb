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

  describe "voice_bars" do
    it "should be the matching voice bar of each bar of the parent" do
      voice_bars = [Node::VoiceBar.new, Node::VoiceBar.new]
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new.tap {|bar|
            bar.children = voice_bars
          }
        ]
      }

      tab.voices[0].voice_bars.should == [voice_bars[0]]
      tab.voices[1].voice_bars.should == [voice_bars[1]]
    end
  end
end
