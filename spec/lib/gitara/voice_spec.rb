require 'spec_helper'

describe Gitara::Voice do
  describe "#call_name" do
    it "should be the variable name of the node when called inside lilypond" do
      voice = FactoryBot.build(:voice, :id => 1)
      expect(voice.call_name).to eq('\vOne')
    end
  end

  describe "#definition_name" do
    it "should be the name of the voice in a lilypond variable definition statement" do
      voice = FactoryBot.build(:voice, :id => 1)
      expect(voice.definition_name).to eq("vOne")
    end
  end

  describe "#id_as_word" do
    it "should convert the id to word" do
      node = FactoryBot.build(:voice, :id => 1)
      expect(node.id_as_word).to eq("One")
    end
  end

  describe "#stem_type" do
    it "should be the lilypond stem type for the voice" do
      voice = FactoryBot.build(:voice, :id => 1)
      expect(voice.stem_type).to eq('\voiceOne')
    end
  end

  describe "#transposition" do
    it "should be based on the tab's transposition and the voice's octave" do
      tab = FactoryBot.build(:tab,
        :transposition => 'd',
        :children => [
          FactoryBot.build(:bar, :children => [
            FactoryBot.build(:note_set),
            FactoryBot.build(:note_set)
          ])
        ]
      )
      expect(tab.max_number_of_voices).to eq(2)

      voice = FactoryBot.build(:voice, :parent => tab, :id => 1)
      expect(voice.transposition).to eq("d''")

      voice = FactoryBot.build(:voice, :parent => tab, :id => 2)
      expect(voice.transposition).to eq("d'")
    end

    it "should be blank if the tab has no transposition" do
      tab = FactoryBot.build(:tab,
        :children => [
          FactoryBot.build(:bar, :children => [
            FactoryBot.build(:note_set),
            FactoryBot.build(:note_set)
          ])
        ]
      )
      expect(tab.max_number_of_voices).to eq(2)

      voice = FactoryBot.build(:voice, :parent => tab, :id => 1)
      expect(voice.transposition).to be_nil
    end
  end

  describe "#octave" do
    it "should be based on the voice's position in the tab" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :children => [
          FactoryBot.build(:note_set),
          FactoryBot.build(:note_set)
        ])
      ])
      expect(tab.max_number_of_voices).to eq(2)

      voice = FactoryBot.build(:voice, :parent => tab, :id => 1)
      expect(voice.octave).to eq(2)

      voice = FactoryBot.build(:voice, :parent => tab, :id => 2)
      expect(voice.octave).to eq(1)
    end
  end
end
