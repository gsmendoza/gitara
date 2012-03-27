require 'spec_helper'

describe Node::Repeat do
  describe "call_value" do
    it "should be a call to lilypond's repeat command" do
      repeat = FactoryGirl.build(:repeat, :value => 2, :children => [
        FactoryGirl.build(:bar)
      ])

      version = Node::Base::NodeVersion.new(:node => repeat)
      repeat.call_value(version).should == "\\repeat volta 2 { \\nBarRepeatOneBarOne }"
    end
  end

end
