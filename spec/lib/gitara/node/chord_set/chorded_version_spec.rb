require 'spec_helper'

describe 'ChordSet::ChordedVersion' do
  describe "value" do
    it "should be the chord set's value" do
      chorded_version = Node::ChordSet::ChordedVersion.new(:node => Node::ChordSet.new(:name => :Am, :value => '4r-"Am" r r r'))
      chorded_version.value.should == '4r-"Am" r r r'
    end
  end
end

