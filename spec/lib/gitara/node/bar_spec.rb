require 'spec_helper'

describe 'Bar' do
  describe "note_sets" do
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

  describe "stanza_heading" do
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

  describe "first_bar_of_stanza?" do
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
end
