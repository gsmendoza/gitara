require 'spec_helper'

describe Node::Base do
  describe "id_as_word" do
    it "should convert the id to word" do
      node = Node::Base.new(:id => 1)
      node.id_as_word.should == "One"
    end
  end

  describe "name" do
    it "should be the variable name of the node when called inside lilypond" do
      node = Node::Base.new(:id => 1, :name => 'vOne')
      node.call_name.should == '\vOne'
    end
  end

  describe "children=(other)" do
    it "should set the ids and parents of the children" do
      parent = Node::Base.new
      parent.children = [Node::Base.new(:id => nil)]
      parent.children[0].id.should == 1
      parent.children[0].parent.should == parent
    end
  end

  describe "definition!" do
    it "should be the definition node which matches this node's name" do
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.children = [
          Node::VoiceBar.new,
          Node::VoiceBar.new
        ]
      }

      call_bar = Node::Bar.new(:name => 'Intro')

      tab = Node::Tab.new.tap {|tab|
        tab.children = [definition_bar, call_bar]
      }

      call_bar.definition!.should == definition_bar
    end
  end

  describe "definition?" do
    it "should be true if this node has children" do
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.children = [
          Node::VoiceBar.new,
          Node::VoiceBar.new
        ]
      }
      definition_bar.should be_definition
    end

    it "should be false if this node does not have children" do
      call_bar = Node::Bar.new(:name => 'Intro')
      call_bar.should_not be_definition
    end
  end
end
