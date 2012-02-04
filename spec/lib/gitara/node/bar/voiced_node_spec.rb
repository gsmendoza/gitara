require 'spec_helper'

describe 'Bar::VoicedNode' do
  describe "matching_note_set" do
    it "should be the note_set matching this voiced bar" do
      note_set = Node::NoteSet.new

      bar = Node::Bar.new
      bar.add note_set

      voice = Voice.new(:id => 1)

      voiced_bar = Node::Bar::VoicedNode.new(:node => bar, :voice => voice)
      voiced_bar.matching_note_set.should == note_set
    end
  end
end
