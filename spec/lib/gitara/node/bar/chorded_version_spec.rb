require 'spec_helper'

describe 'ChordedVersion' do
  describe "value" do
    it "should be the call names of the chord sets in the bar, if available" do
      bar = FactoryGirl.build(:bar, :children => [FactoryGirl.build(:chord_set, :name => :Am, :value => 'r-"Am"')])

      chorded_bar = FactoryGirl.build(:chorded_bar, :node => bar)
      chorded_bar.value.should == '\cChordSetAm'
    end

    it "should be blank, if the bar does not have any chord sets" do
      bar = FactoryGirl.build(:bar, :children => [FactoryGirl.build(:note_set, :value => 'c')])

      chorded_bar = FactoryGirl.build(:chorded_bar, :node => bar)
      chorded_bar.value.should == ""
    end
  end
end

