require 'spec_helper'

describe Gitara::Node::Line do
  describe "#manual_break?" do
    it "should be true by default" do
      described_class.new.manual_break?.should be_true
    end
    
    it "should be based on #manual_break field" do
      line = described_class.new
      line.manual_break = false
      line.manual_break?.should be_false
    end
  end
end

