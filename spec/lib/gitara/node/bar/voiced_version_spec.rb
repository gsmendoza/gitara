require 'spec_helper'

describe 'Bar::VoicedVersion' do
  describe "matching_note_set" do
    it "should be the note_set matching this voiced bar" do
      note_set = FactoryGirl.build(:note_set)

      bar = FactoryGirl.build(:bar, :children => [note_set])

      voice = FactoryGirl.build(:voice, :id => 1)

      voiced_bar = FactoryGirl.build(:voiced_bar, :node => bar, :voice => voice)
      voiced_bar.matching_note_set.should == note_set
    end
  end
end
