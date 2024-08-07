require 'spec_helper'

describe Gitara do
  describe ".tab" do
    it "should create a tab instance if it does not exist" do
      expect(Gitara.tab).to be_nil
      Gitara.define
      expect(Gitara.tab).to be_a(Node::Tab)
    end
  end

  describe ".define" do
    it "should instance evaluate a block if given" do
      tab = Gitara.define do
        bar "Intro" do
          notes "c"
        end
      end

      bars = tab.definitions(Node::Bar)
      expect(bars.size).to eq(1)
      expect(bars[0].name).to eq('Intro')
    end
  end
end
