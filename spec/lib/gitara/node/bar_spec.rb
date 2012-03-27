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
    it "should be a whole rest with the stanza name if the bar is the first node of a stanza" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])

      bar.stanza_heading.should == 'r1^"Intro"'
    end

    it "should be a whole rest with no stanza name if the bar is not the first node of a stanza" do
      bar = FactoryGirl.build(:bar)
      bar.stanza_heading.should == 'r1'
    end
  end

  describe "#with a special_duration" do
    subject { FactoryGirl.build(:bar, :specified_duration => 8) }

    it "should be a partial with the stanza name if the bar is the first node of a stanza" do
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [subject])

      subject.stanza_heading.should == 'r8^"Intro"'
    end

    it "should be a partial with no stanza name if the subject is not the first node of a stanza" do
      subject.stanza_heading.should == 'r8'
    end
  end

  describe "#first_bar_of_stanza?" do
    it "should be true if the bar is the first bar of a stanza" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])
      bar.should be_first_bar_of_stanza
    end

    it "should be false if the bar is not the first bar of a stanza" do
      bars = [FactoryGirl.build(:bar), FactoryGirl.build(:bar)]
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => bars)

      bars[1].should_not be_first_bar_of_stanza
    end

    it "should be false if the bar does not belong to a stanza" do
      bar = FactoryGirl.build(:bar)
      bar.should_not be_first_bar_of_stanza
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

  describe "#duration" do
    it "should be 1 if there is no specified duration" do
      FactoryGirl.build(:bar, :specified_duration => nil).duration.should == 1
    end

    it "should be the specified duration if present" do
      FactoryGirl.build(:bar, :specified_duration => 8).duration.should == 8
    end
  end
end
