require 'spec_helper'

describe 'Bar' do
  describe "note_sets" do
    it "should be the note sets of its definition" do
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.children = [
          Node::NoteSet.new,
          Node::NoteSet.new
        ]
      }

      call_bar = Node::Bar.new(:name => 'Intro')

      tab = Node::Tab.new.tap {|tab|
        tab.children = [definition_bar, call_bar]
      }

      call_bar.note_sets.should have(2).note_sets
    end
  end

  describe "stanza_heading" do
    it "should be a whole rest with the stanza name if the bar is the first node of a stanza" do
      bar = Node::Bar.new(:children => [Node::NoteSet.new])
      stanza = Node::Stanza.new(:name => 'Intro', :children => [bar])

      bar.stanza_heading.should == 'r1^"Intro"'
    end

    it "should be a whole rest with no stanza name if the bar is not the first node of a stanza" do
      bar = Node::Bar.new
      bar.stanza_heading.should == 'r1'
    end
  end

  describe "first_bar_of_stanza?" do
    it "should be true if the bar is the first bar of a stanza" do
      bar = Node::Bar.new(:children => [Node::NoteSet.new])
      stanza = Node::Stanza.new(:name => 'Intro', :children => [bar])
      bar.should be_first_bar_of_stanza
    end

    it "should be false if the bar is not the first bar of a stanza" do
      bars = [Node::Bar.new(:children => [Node::NoteSet.new]), Node::Bar.new(:children => [Node::NoteSet.new])]
      stanza = Node::Stanza.new(:name => 'Intro', :children => bars)

      bars[1].should_not be_first_bar_of_stanza
    end

    it "should be false if the bar does not belong to a stanza" do
      bar = Node::Bar.new(:children => [Node::NoteSet.new])
      bar.should_not be_first_bar_of_stanza
    end
  end
end
