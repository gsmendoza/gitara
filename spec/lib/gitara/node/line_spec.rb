require 'spec_helper'

describe Gitara::Node::Line do
  describe "#manual_break?" do
    it "should be true by default" do
      expect(described_class.new.manual_break?).to be_true
    end
    
    it "should be based on #manual_break field" do
      line = described_class.new
      line.manual_break = false
      expect(line.manual_break?).to be_false
    end
  end
end

