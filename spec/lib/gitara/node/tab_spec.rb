require 'spec_helper'

describe 'Tab' do
  describe "voices" do
    it "should create a <max_number_of_voices> voices" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new.tap {|bar|
            bar.children = [
              Node::NoteSet.new,
              Node::NoteSet.new
            ]
          }
        ]
      }
      voices = tab.voices
      voices.should have(2).values
      voices[0].id.should == 1
      voices[1].id.should == 2
      voices.map(&:parent).uniq.should == [tab]
    end
  end

  describe "max_number_of_voices" do
    it "should be the max number of note_sets in a bar" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new.tap {|bar|
            bar.children = [
              Node::NoteSet.new,
              Node::NoteSet.new
            ]
          }
        ]
      }
      tab.max_number_of_voices.should == 2
    end
  end

  describe "playable_child" do
    it "should be the last child of the tab" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new(:name => 'Intro').tap {|bar|
            bar.children = [
              Node::NoteSet.new,
              Node::NoteSet.new
            ]
          },
          Node::Bar.new(:name => 'Intro')
        ]
      }

      tab.playable_child.id.should == 2
    end
  end
end
