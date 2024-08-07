require 'spec_helper'

describe Gitara::Node::Bar do
  describe "#note_sets" do
    it "should be the note sets of its definition" do
      definition_bar = FactoryBot.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [
          FactoryBot.build(:note_set),
          FactoryBot.build(:note_set)
        ]
      }

      call_bar = FactoryBot.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryBot.build(:tab, :children => [definition_bar, call_bar])

      expect(call_bar.note_sets).to have(2).note_sets
    end
  end

  describe "#stanza_heading" do
    it "should be a whole rest with no stanza name" do
      first_bar = FactoryBot.build(:bar)
      second_bar = FactoryBot.build(:bar)
      stanza = FactoryBot.build(:stanza, :name => 'Intro', :children => [first_bar, second_bar])
      tab = FactoryBot.build(:tab, :children => [stanza], :time => '4/4')

      expect(second_bar.stanza_heading).to == 'r1'
    end

    it "should be a partial with no stanza name if the bar has a special_duration" do
      first_bar = FactoryBot.build(:bar)
      second_bar = FactoryBot.build(:bar, :specified_duration => 8)
      stanza = FactoryBot.build(:stanza, :name => 'Intro', :children => [first_bar, second_bar])
      tab = FactoryBot.build(:tab, :children => [stanza], :time => '4/4')

      expect(second_bar.stanza_heading).to == 'r8'
    end
  end

  describe "#specified_duration_as_lilypond" do
    it "should be \\partial specified_duration if present" do
      bar = FactoryBot.build(:bar, :specified_duration => 8)
      expect(bar.specified_duration_as_lilypond).to == '\partial 8'
    end

    it "should be nil if there is no specified_duration" do
      bar = FactoryBot.build(:bar, :specified_duration => nil)
      expect(bar.specified_duration_as_lilypond).to be_nil
    end
  end
end
