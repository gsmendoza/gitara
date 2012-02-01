require 'spec_helper'

describe Gitara do
  describe "tab" do
    it "should create a tab instance if it does not exist" do
      Gitara.tab.should be_nil
      Gitara.define
      Gitara.tab.should be_a(Node::Tab)
    end

    it "should instance evaluate a block if given" do
      tab = Gitara.define do
        bar "Intro"
      end

      tab.bars.size.should == 1
      tab.bars[0].name.should == 'Intro'
    end
  end
end
