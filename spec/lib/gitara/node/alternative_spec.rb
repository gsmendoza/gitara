require 'spec_helper'

describe Gitara::Node::Alternative do
  describe "#call_value" do
    it "should be a call to lilypond's alternative command" do
      alternative = FactoryBot.build(:alternative, :children => [
        FactoryBot.build(:bar, :name => 'First'),
        FactoryBot.build(:bar, :name => 'Second')
      ])

      version = Node::Base::NodeVersion.new(:node => alternative)
      expect(alternative.call_value(version)).to eq("\\alternative { { \\nBarFirst } { \\nBarSecond } }")
    end
  end
end
