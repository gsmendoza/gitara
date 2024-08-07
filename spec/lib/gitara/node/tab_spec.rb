require 'spec_helper'

describe Gitara::Node::Tab do
  describe "#voices" do
    it "should create a max_number_of_voices voices" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :children => [
          FactoryBot.build(:note_set),
          FactoryBot.build(:note_set)
        ])
      ])
      voices = tab.voices
      voices.should have(2).values
      voices[0].id.should == 1
      voices[1].id.should == 2
      voices.map(&:parent).uniq.should == [tab]
    end
  end

  describe "#max_number_of_voices" do
    it "should be the max number of note_sets in a bar" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :children => [
          FactoryBot.build(:note_set),
          FactoryBot.build(:note_set)
        ])
      ])

      tab.max_number_of_voices.should == 2
    end
  end

  describe "#playable_child" do
    it "should be the last child of the tab" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :name => 'Intro', :children => [
          FactoryBot.build(:note_set),
          FactoryBot.build(:note_set)
        ]),
        FactoryBot.build(:bar, :name => 'Intro')
      ])

      tab.playable_child.id.should == 2
    end
  end

  describe "#midi_instrument" do
    it "should have acoustic guitar (nylon) as default" do
      tab = FactoryBot.build(:tab)
      tab.midi_instrument.should == 'acoustic guitar (nylon)'
    end
  end

  describe "#time_signature" do
    it "should be based on time if it exists" do
      tab = FactoryBot.build(:tab, :time => '3/4')
      tab.time_signature.value.should == '3/4'
    end

    it "should be 4/4 if time is not set" do
      tab = FactoryBot.build(:tab, :time => nil)
      tab.time_signature.value.should == '4/4'
    end
  end
end
