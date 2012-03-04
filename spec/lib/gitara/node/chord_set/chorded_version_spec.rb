require 'spec_helper'

describe 'ChordSet::ChordedNode' do
  describe "value" do
    it "should be the chord set's value" do
      chorded_node = Node::ChordSet::ChordedNode.new(:node => Node::ChordSet.new(:name => :Am, :value => '4r-"Am" r r r'))
      chorded_node.value.should == '4r-"Am" r r r'
    end
  end
end

