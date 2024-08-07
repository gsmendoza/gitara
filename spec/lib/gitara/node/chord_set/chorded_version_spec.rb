require 'spec_helper'

describe Gitara::Node::ChordSet::ChordedVersion do
  describe "#value" do
    it "should be the chord set's value" do
      chorded_version = FactoryBot.build(:chorded_chord_set, :node => FactoryBot.build(:chord_set, :name => :Am, :value => '4r-"Am" r r r'))
      expect(chorded_version.value).to eq('4r-"Am" r r r')
    end
  end
end

