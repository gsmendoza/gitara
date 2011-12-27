require 'spec_helper'

describe Node::Tab do
  describe "voice" do
    it "should add a voice to the tab" do
      tab = Node::Tab.new
      tab.voice "<c'\2>1"
      tab.voice.should == ["<c'\2>1"]
    end

    it "should append a voice to the tab if the tab already has a voice" do
      tab = Node::Tab.new
      tab.voice "<c'\2>1"
      tab.voice "<d'\2>1"
      tab.voice.should == ["<c'\2>1", "<d'\2>1"]
    end
  end
end
