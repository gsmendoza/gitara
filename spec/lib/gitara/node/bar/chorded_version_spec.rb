require 'spec_helper'

describe 'ChordedVersion' do
  describe "value" do
    it "should be the call names of the chord sets in the bar, if available" do
      bar = Node::Bar.new(:children => [Node::ChordSet.new(:name => :Am, :value => 'r-"Am"')])

      chorded_bar = Node::Bar::ChordedVersion.new(:node => bar)
      chorded_bar.value.should == '\cChordSetAm'
    end

    it "should be blank, if the bar does not have any chord sets" do
      bar = Node::Bar.new(:children => [Node::NoteSet.new(:value => 'c')])

      chorded_bar = Node::Bar::ChordedVersion.new(:node => bar)
      chorded_bar.value.should == ""
    end
  end
end

