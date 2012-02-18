require 'spec_helper'

describe Node::Base do
  describe "children" do
    it "should be its own children if they exist" do
      child = Node::Base.new(:id => nil)

      parent = Node::Base.new
      parent.children = [child]
      parent.children.should == [child]
    end

    it "should be the children of its definition if the node is not a definition" do
      child = Node::NoteSet.new
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.children = [child]
      }

      call_bar = Node::Bar.new(:name => 'Intro')

      tab = Node::Tab.new.tap {|tab|
        tab.children = [definition_bar, call_bar]
      }

      call_bar.children.should == [child]
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

  describe "add(child)" do
    it "should set the id and parent of the child" do
      parent = Node::Base.new

      parent.add Node::Base.new(:id => nil)
      parent.children[0].id.should == 1
      parent.children[0].parent.should == parent

      parent.add Node::Base.new(:id => nil)
      parent.children[1].id.should == 2
      parent.children[1].parent.should == parent
    end

    it "should set the id based on existing siblings having the same class as the child" do
      parent = Node::Base.new

      bar_1 = Node::Bar.new
      parent.add bar_1
      bar_1.id.should == 1

      line_1 = Node::Line.new
      parent.add line_1
      line_1.id.should == 1

      bar_2 = Node::Bar.new
      parent.add bar_2
      bar_2.id.should == 2
    end
  end

  describe "definition" do
    it "should be the definition node which matches this node's name" do
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.children = [
          Node::NoteSet.new,
          Node::NoteSet.new
        ]
      }

      call_bar = Node::Bar.new(:name => 'Intro')

      tab = Node::Tab.new.tap {|tab|
        tab.children = [definition_bar, call_bar]
      }

      call_bar.send(:definition).should == definition_bar
    end
  end

  describe "definition?" do
    it "should be true if this node has children" do
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.add Node::NoteSet.new
        bar.add Node::NoteSet.new
      }
      definition_bar.should be_definition
    end

    it "should be false if this node does not have children" do
      call_bar = Node::Bar.new(:name => 'Intro')
      call_bar.should_not be_definition
    end
  end

  describe "value" do
    it "should convert slashes to backslashes" do
      node = Node::Base.new(:value => %q|notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"|)
      node.value.should == %q|notes "<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8"|
    end
  end

  describe "voiced_as(arg)" do
    it "should return the voiced version of the node, if arg is a voice" do
      node = Node::Base.new
      voice = Voice.new

      node_voice_pair = node.voiced_as(voice)
      node_voice_pair.should be_a(Node::Base::VoicedNode)
      node_voice_pair.node.should == node
      node_voice_pair.voice.should == voice
    end

    it "should return the voiced versions of the node, if arg are voices" do
      node = Node::Base.new
      voices = [Voice.new, Voice.new]

      node_voice_pairs = node.voiced_as(voices)
      node_voice_pairs.size.should == 2

      node_voice_pairs.each do |pair|
        pair.should be_a(Node::Base::VoicedNode)
        pair.node.should == node
      end

      node_voice_pairs[0].voice.should == voices[0]
      node_voice_pairs[1].voice.should == voices[1]
    end
  end

  describe "definitions(klass)" do
    it "should be itself if it is an instance of the klass" do
      node = Node::Bar.new
      node.add Node::NoteSet.new
      node.should be_definition

      node.definitions(Node::Bar).should == [node]
    end

    it "should include descendants which are instances of klass" do
      node = Node::Base.new.tap do |base|
        base.add(
          Node::Bar.new.tap do |bar|
            bar.add Node::NoteSet.new
          end
        )

        base.add(
          Node::Bar.new.tap do |bar|
            bar.add Node::NoteSet.new
          end
        )
      end

      node.definitions(Node::Bar).should have(2).bars
    end
  end

  describe "root" do
    it "should be itself if it has no parent" do
      node = Node::Base.new
      node.root.should == node
    end

    it "should be the ancentor of the node which has no parent of its own" do
      note_set = Node::NoteSet.new

      bar = Node::Bar.new
      bar.add note_set

      root = Node::Base.new
      root.add bar

      note_set.root.should == root
    end
  end

  describe "name" do
    it "should be the given name, if available" do
      Node::Bar.new(:name => :Intro).name.should == :Intro
    end

    it "should be based on the parent's name the node's class and id, if not available" do
      child = Node::NoteSet.new
      bar = Node::Bar.new(:name => :Intro).tap do |bar|
        bar.add child
      end

      child.name.should == "IntroNoteSetOne"
    end

    it "should be based on the node's class and id, if there's no parent and the there's no given name" do
      child = Node::NoteSet.new
      child.name.should == "NoteSetOne"
    end
  end

  describe "id" do
    it "should be 1 by default" do
      child = Node::NoteSet.new
      child.id.should == 1
    end
  end

  describe "id_as_word" do
    it "should camelize if necessary" do
      node = Node::Base.new(:id => 24)
      node.id_as_word.should == "TwentyFour"
    end
  end
end
