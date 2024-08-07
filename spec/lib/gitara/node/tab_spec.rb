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
      expect(voices).to have(2).values
      expect(voices[0].id).to eq(1)
      expect(voices[1].id).to eq(2)
      expect(voices.map(&:parent).uniq).to eq([tab])
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

      expect(tab.max_number_of_voices).to eq(2)
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

      expect(tab.playable_child.id).to eq(2)
    end
  end

  describe "#midi_instrument" do
    it "should have acoustic guitar (nylon) as default" do
      tab = FactoryBot.build(:tab)
      expect(tab.midi_instrument).to eq('acoustic guitar (nylon)')
    end
  end

  describe "#time_signature" do
    it "should be based on time if it exists" do
      tab = FactoryBot.build(:tab, :time => '3/4')
      expect(tab.time_signature.value).to eq('3/4')
    end

    it "should be 4/4 if time is not set" do
      tab = FactoryBot.build(:tab, :time => nil)
      expect(tab.time_signature.value).to eq('4/4')
    end
  end
end
