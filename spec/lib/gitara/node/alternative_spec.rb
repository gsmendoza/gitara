require 'spec_helper'

describe Node::Alternative do
  describe "call_value" do
    it "should be a call to lilypond's alternative command" do
      alternative = FactoryGirl.build(:alternative, :children => [
        FactoryGirl.build(:bar, :name => 'First'),
        FactoryGirl.build(:bar, :name => 'Second')
      ])

      version = Node::Base::NodeVersion.new(:node => alternative)
      alternative.call_value(version).should == "\\alternative { { \\nBarFirst } { \\nBarSecond } }"
    end
  end
end
