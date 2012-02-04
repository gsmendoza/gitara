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
end
