require 'spec_helper'

describe Gitara::Voice do
  describe "#call_name" do
    it "should be the variable name of the node when called inside lilypond" do
      voice = FactoryBot.build(:voice, :id => 1)
      voice.call_name.should == '\vOne'
    end
  end

  describe "#definition_name" do
    it "should be the name of the voice in a lilypond variable definition statement" do
      voice = FactoryBot.build(:voice, :id => 1)
      voice.definition_name.should == "vOne"
    end
  end

  describe "#id_as_word" do
    it "should convert the id to word" do
      node = FactoryBot.build(:voice, :id => 1)
      node.id_as_word.should == "One"
    end
  end

  describe "#stem_type" do
    it "should be the lilypond stem type for the voice" do
      voice = FactoryBot.build(:voice, :id => 1)
      voice.stem_type.should == '\voiceOne'
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
      tab.max_number_of_voices.should == 2

      voice = FactoryBot.build(:voice, :parent => tab, :id => 1)
      voice.transposition.should == "d''"

      voice = FactoryBot.build(:voice, :parent => tab, :id => 2)
      voice.transposition.should == "d'"
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
      tab.max_number_of_voices.should == 2

      voice = FactoryBot.build(:voice, :parent => tab, :id => 1)
      voice.transposition.should be_nil
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
      tab.max_number_of_voices.should == 2

      voice = FactoryBot.build(:voice, :parent => tab, :id => 1)
      voice.octave.should == 2

      voice = FactoryBot.build(:voice, :parent => tab, :id => 2)
      voice.octave.should == 1
    end
  end
end
