require 'spec_helper'

describe Gitara::TimeSignature do
  describe "#rest_bar_value" do
    it "should be r1 if the time signature generates whole note bars" do
      expect(FactoryBot.build(:time_signature, :value => '4/4').rest_bar_value).to eq("r1")
    end

    it "should be based on beat unit and beats per bar if the time signature does not generate whole note bars" do
      expect(FactoryBot.build(:time_signature, :value => '3/4').rest_bar_value).to eq("r4 r4 r4")
    end
  end

  describe "#generates_whole_note_bars?" do
    it "should be true if the beat unit is the same as the beats per bar" do
      expect(FactoryBot.build(:time_signature, :value => '4/4').generates_whole_note_bars?).to be_truthy
    end

    it "should be false if the beat unit is not the same as the beats per bar" do
      expect(FactoryBot.build(:time_signature, :value => '3/4').generates_whole_note_bars?).to be_falsy
    end
  end

  describe "beat_unit" do
    it "is the second part of the value" do
      expect(FactoryBot.build(:time_signature, :value => '3/4').beat_unit).to eq(4)
    end
  end

  describe "beats_per_bar" do
    it "is the first part of the value" do
      expect(FactoryBot.build(:time_signature, :value => '3/4').beats_per_bar).to eq(3)
    end
  end
end
