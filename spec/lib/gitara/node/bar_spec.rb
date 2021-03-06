require 'spec_helper'

describe Gitara::Node::Bar do
  describe "#note_sets" do
    it "should be the note sets of its definition" do
      definition_bar = FactoryGirl.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [
          FactoryGirl.build(:note_set),
          FactoryGirl.build(:note_set)
        ]
      }

      call_bar = FactoryGirl.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryGirl.build(:tab, :children => [definition_bar, call_bar])

      call_bar.note_sets.should have(2).note_sets
    end
  end

  describe "#stanza_heading" do
    it "should be a whole rest with no stanza name" do
      first_bar = FactoryGirl.build(:bar)
      second_bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [first_bar, second_bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      second_bar.stanza_heading.should == 'r1'
    end

    it "should be a partial with no stanza name if the bar has a special_duration" do
      first_bar = FactoryGirl.build(:bar)
      second_bar = FactoryGirl.build(:bar, :specified_duration => 8)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [first_bar, second_bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      second_bar.stanza_heading.should == 'r8'
    end
  end

  describe "#specified_duration_as_lilypond" do
    it "should be \\partial specified_duration if present" do
      bar = FactoryGirl.build(:bar, :specified_duration => 8)
      bar.specified_duration_as_lilypond.should == '\partial 8'
    end

    it "should be nil if there is no specified_duration" do
      bar = FactoryGirl.build(:bar, :specified_duration => nil)
      bar.specified_duration_as_lilypond.should be_nil
    end
  end
end
