require 'spec_helper'

describe Gitara::Node::Bar::ChordedVersion do
  describe "#value" do
    it "should be the call names of the chord sets in the bar, if available" do
      bar = FactoryBot.build(:bar, :children => [FactoryBot.build(:chord_set, :name => :Am, :value => 'r-"Am"')])

      chorded_bar = FactoryBot.build(:chorded_bar, :node => bar)
      expect(chorded_bar.value).to == '\cChordSetAm'
    end

    it "should be blank, if the bar does not have any chord sets" do
      bar = FactoryBot.build(:bar, :children => [FactoryBot.build(:note_set, :value => 'c')])

      chorded_bar = FactoryBot.build(:chorded_bar, :node => bar)
      expect(chorded_bar.value).to == ""
    end
  end
end

