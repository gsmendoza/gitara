require 'spec_helper'

describe Node::NoteSet do
  describe "definition_name" do
    it "should be the name of the note_set in a lilypond variable definition statement" do
      note_set = Node::NoteSet.new(:id => 1, :parent => Node::Bar.new(:name => 'Intro'))
      note_set.definition_name.should == "vOneBarIntro"
    end
  end
end
