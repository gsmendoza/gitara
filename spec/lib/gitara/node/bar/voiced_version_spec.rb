require 'spec_helper'

describe Gitara::Node::Bar::VoicedVersion do
  describe "#matching_note_set" do
    it "should be the note_set matching this voiced bar" do
      note_set = FactoryBot.build(:note_set)

      bar = FactoryBot.build(:bar, :children => [note_set])

      voice = FactoryBot.build(:voice, :id => 1)

      voiced_bar = FactoryBot.build(:voiced_bar, :node => bar, :voice => voice)
      expect(voiced_bar.matching_note_set).to == note_set
    end
  end
end
