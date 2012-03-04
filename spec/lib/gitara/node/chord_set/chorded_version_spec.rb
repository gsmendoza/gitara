require 'spec_helper'

describe 'ChordSet::ChordedVersion' do
  describe "value" do
    it "should be the chord set's value" do
      chorded_version = FactoryGirl.build(:chorded_chord_set, :node => FactoryGirl.build(:chord_set, :name => :Am, :value => '4r-"Am" r r r'))
      chorded_version.value.should == '4r-"Am" r r r'
    end
  end
end

