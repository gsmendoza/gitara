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
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      bar.stanza_heading.should == 'r1^"Intro"'
    end

    it "should be a whole rest with no stanza name if the bar is not the first node of a stanza" do
      first_bar = FactoryGirl.build(:bar)
      second_bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [first_bar, second_bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      second_bar.stanza_heading.should == 'r1'
    end
  end

  describe "#with a special_duration" do
    it "should be a partial with the stanza name if the bar is the first node of a stanza" do
      subject = FactoryGirl.build(:bar, :specified_duration => 8)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [subject])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      subject.stanza_heading.should == 'r8^"Intro"'
    end

    it "should be a partial with no stanza name if the subject is not the first node of a stanza" do
      first_bar = FactoryGirl.build(:bar)
      second_bar = FactoryGirl.build(:bar, :specified_duration => 8)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [first_bar, second_bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      second_bar.stanza_heading.should == 'r8'
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

  describe "#stanza_heading_for_first_bar" do
    it "should be the time signature's rest bar value with the stanza name if the time signature will generate whole note bars" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      bar.stanza_heading_for_first_bar.should == 'r1^"Intro"'
    end

    it "should attach the stanza name to the first rest note if the time signature will not generate whole note bars" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '3/4')

      bar.stanza_heading_for_first_bar.should == 'r4^"Intro" r4 r4'
    end
  end
end
