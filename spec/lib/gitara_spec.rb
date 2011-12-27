require 'spec_helper'

describe Gitara do
  describe "define" do
    it "should set Gitara.tab to a new tab" do
      lambda { Gitara.tab }.should raise_error(NameError)

      Gitara.define do
      end

      Gitara.tab.should be_a(Node::Tab)
    end
  end
end
