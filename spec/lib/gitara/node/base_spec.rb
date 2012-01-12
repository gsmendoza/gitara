require 'spec_helper'

describe Node::Base do
  describe "id_as_word" do
    it "should convert the id to word" do
      node = Node::Base.new(:id => 1)
      node.id_as_word.should == "One"
    end
  end

  describe "name" do
    it "should be the variable name of the node when called inside lilypond" do
      node = Node::Base.new(:id => 1, :name => 'vOne')
      node.call_name.should == '\vOne'
    end
  end
end
