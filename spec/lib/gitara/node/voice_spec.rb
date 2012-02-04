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

  describe "note_sets" do
    it "should be the matching voice bar of each bar of the parent" do
      note_sets = [Node::NoteSet.new, Node::NoteSet.new]
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new.tap {|bar|
            bar.children = note_sets
        }
        ]
      }

      tab.voices[0].note_sets.should == [note_sets[0]]
      tab.voices[1].note_sets.should == [note_sets[1]]
    end
  end
end
