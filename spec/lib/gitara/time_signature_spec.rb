require 'spec_helper'

describe Gitara::TimeSignature do
  describe "#rest_bar_value" do
    it "should be r1 if the time signature generates whole note bars" do
      FactoryGirl.build(:time_signature, :value => '4/4').rest_bar_value.should == "r1"
    end

    it "should be based on beat unit and beats per bar if the time signature does not generate whole note bars" do
      FactoryGirl.build(:time_signature, :value => '3/4').rest_bar_value.should == "r4 r4 r4"
    end
  end

  describe "#generates_whole_note_bars?" do
    it "should be true if the beat unit is the same as the beats per bar" do
      FactoryGirl.build(:time_signature, :value => '4/4').generates_whole_note_bars?.should be_true
    end

    it "should be false if the beat unit is not the same as the beats per bar" do
      FactoryGirl.build(:time_signature, :value => '3/4').generates_whole_note_bars?.should be_false
    end
  end

  describe "beat_unit" do
    it "is the second part of the value" do
      FactoryGirl.build(:time_signature, :value => '3/4').beat_unit.should == 4
    end
  end

  describe "beats_per_bar" do
    it "is the first part of the value" do
      FactoryGirl.build(:time_signature, :value => '3/4').beats_per_bar.should == 3
    end
  end
end
