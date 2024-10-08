require 'spec_helper'

describe Gitara::Node::Repeat do
  describe "#call_value" do
    it "should be a call to lilypond's repeat command" do
      repeat = FactoryBot.build(:repeat, :value => 2, :children => [
        FactoryBot.build(:bar)
      ])

      version = Node::Base::NodeVersion.new(:node => repeat)
      expect(repeat.call_value(version)).to eq("\\repeat volta 2 { \\nBarRepeatOneBarOne }")
    end
  end

end
