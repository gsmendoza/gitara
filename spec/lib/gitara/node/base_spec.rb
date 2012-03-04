require 'spec_helper'

describe Node::Base do
  describe "children" do
    it "should be its own children if they exist" do
      child = FactoryGirl.build(:base, :id => nil)

      parent = FactoryGirl.build(:base)
      parent.children = [child]
      parent.children.should == [child]
    end

    it "should be the children of its definition if the node is not a definition" do
      child = FactoryGirl.build(:note_set)
      definition_bar = FactoryGirl.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [child]
      }

      call_bar = FactoryGirl.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryGirl.build(:tab, :children => [definition_bar, call_bar])

      call_bar.children.should == [child]
    end
  end

  describe "children=(other)" do
    it "should set the ids and parents of the children" do
      parent = FactoryGirl.build(:base)
      parent.children = [FactoryGirl.build(:base, :id => nil)]
      parent.children[0].id.should == 1
      parent.children[0].parent.should == parent
    end
  end

  describe "add(child)" do
    it "should set the id and parent of the child" do
      parent = FactoryGirl.build(:base)

      parent.add FactoryGirl.build(:base, :id => nil)
      parent.children[0].id.should == 1
      parent.children[0].parent.should == parent

      parent.add FactoryGirl.build(:base, :id => nil)
      parent.children[1].id.should == 2
      parent.children[1].parent.should == parent
    end

    it "should set the id based on existing siblings having the same class as the child" do
      parent = FactoryGirl.build(:base)

      bar_1 = FactoryGirl.build(:bar)
      parent.add bar_1
      bar_1.id.should == 1

      line_1 = FactoryGirl.build(:line)
      parent.add line_1
      line_1.id.should == 1

      bar_2 = FactoryGirl.build(:bar)
      parent.add bar_2
      bar_2.id.should == 2
    end
  end

  describe "definition" do
    it "should be the definition node which matches this node's name" do
      definition_bar = FactoryGirl.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [
          FactoryGirl.build(:note_set),
          FactoryGirl.build(:note_set)
        ]
      }

      call_bar = FactoryGirl.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryGirl.build(:tab, :children => [definition_bar, call_bar])

      call_bar.send(:definition).should == definition_bar
    end
  end

  describe "definition?" do
    it "should be true if this node has children" do
      definition_bar = FactoryGirl.build(:bar, :name => 'Intro').tap {|bar|
        bar.add FactoryGirl.build(:note_set)
        bar.add FactoryGirl.build(:note_set)
      }
      definition_bar.should be_definition
    end

    it "should be true if the node has a value" do
      chord_set = FactoryGirl.build(:chord_set, :name => :Am, :value =>'r4-"Am" r r r')
      chord_set.own_children.should be_empty
      chord_set.should be_definition
    end

    it "should be false if this node does not have children and it does not have a value" do
      call_bar = FactoryGirl.build(:bar, :name => 'Intro', :children => [])
      call_bar.own_children.should be_empty
      call_bar.value.should be_nil
      call_bar.should_not be_definition
    end
  end

  describe "value" do
    it "should convert slashes to backslashes" do
      node = FactoryGirl.build(:base, :value => %q|notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"|)
      node.value.should == %q|notes "<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8"|
    end
  end

  describe "voiced_as(arg)" do
    it "should return the voiced version of the node, if arg is a voice" do
      node = FactoryGirl.build(:base)
      voice = FactoryGirl.build(:voice)

      node_voice_pair = node.voiced_as(voice)
      node_voice_pair.should be_a(Node::Base::VoicedVersion)
      node_voice_pair.node.should == node
      node_voice_pair.voice.should == voice
    end

    it "should return the voiced versions of the node, if arg are voices" do
      node = FactoryGirl.build(:base)
      voices = [FactoryGirl.build(:voice), FactoryGirl.build(:voice)]

      node_voice_pairs = node.voiced_as(voices)
      node_voice_pairs.size.should == 2

      node_voice_pairs.each do |pair|
        pair.should be_a(Node::Base::VoicedVersion)
        pair.node.should == node
      end

      node_voice_pairs[0].voice.should == voices[0]
      node_voice_pairs[1].voice.should == voices[1]
    end
  end

  describe "definitions(klass)" do
    it "should be itself if it is an instance of the klass" do
      node = FactoryGirl.build(:bar)
      node.add FactoryGirl.build(:note_set)
      node.should be_definition

      node.definitions(Node::Bar).should == [node]
    end

    it "should include descendants which are instances of klass" do
      node = FactoryGirl.build(:base, :children => [
        FactoryGirl.build(:bar, :children => [FactoryGirl.build(:note_set)]),
        FactoryGirl.build(:bar, :children => [FactoryGirl.build(:note_set)])
      ])

      node.definitions(Node::Bar).should have(2).bars
    end
  end

  describe "root" do
    it "should be itself if it has no parent" do
      node = FactoryGirl.build(:base)
      node.root.should == node
    end

    it "should be the ancentor of the node which has no parent of its own" do
      note_set = FactoryGirl.build(:note_set)

      bar = FactoryGirl.build(:bar)
      bar.add note_set

      root = FactoryGirl.build(:base)
      root.add bar

      note_set.root.should == root
    end
  end

  describe "name" do
    it "should be the given name, if available" do
      FactoryGirl.build(:bar, :name => :Intro).name.should == :Intro
    end

    it "should be based on the parent's name the node's class and id, if not available" do
      child = FactoryGirl.build(:note_set)
      bar = FactoryGirl.build(:bar, :name => :Intro, :children => [child])

      child.name.should == "IntroNoteSetOne"
    end

    it "should be based on the node's class and id, if there's no parent and the there's no given name" do
      child = FactoryGirl.build(:note_set)
      child.name.should == "NoteSetOne"
    end
  end

  describe "id" do
    it "should be 1 by default" do
      child = FactoryGirl.build(:note_set)
      child.id.should == 1
    end
  end

  describe "id_as_word" do
    it "should camelize if necessary" do
      node = FactoryGirl.build(:base, :id => 24)
      node.id_as_word.should == "TwentyFour"
    end
  end

  describe "definition_name" do
    it "should turn the name to a lilypond acceptable name" do
      node = FactoryGirl.build(:base, :name => "Verse 1 line-2")
      node.definition_name.should == "VerseOneLineTwo"
    end
  end

  describe "descendants(klass)" do
    it "should be itself if it is an instance of the klass" do
      tab = FactoryGirl.build(:tab, :children => [FactoryGirl.build(:bar)])
      tab.descendants(Node::Tab).should == [tab]
    end

    it "should include descendants which are instances of klass" do
      tab = FactoryGirl.build(:tab, :children => [
        FactoryGirl.build(:bar, :name => :Intro, :children => [
          FactoryGirl.build(:note_set)
        ])
      ])

      tab.descendants(Node::Bar).should have(1).bar
    end

    it "should follow the definitions of node references for descendants" do
      tab = FactoryGirl.build(:tab, :children => [
        FactoryGirl.build(:bar, :name => :Intro, :children => [FactoryGirl.build(:note_set)]),

        FactoryGirl.build(:line, :name => 'Line 1', :children => [
          FactoryGirl.build(:bar, :name => :Intro , :children => [])
        ]),

        FactoryGirl.build(:stanza, :children => [
          FactoryGirl.build(:line, :name => 'Line 1', :children => [])
        ])
      ])

      bar = tab.own_children[0]

      stanza = tab.own_children[2]
      stanza.descendants(Node::Bar).should == [bar]
    end
  end

  describe "chorded" do
    it "should return the chorded version of the node" do
      node = FactoryGirl.build(:base)
      chorded_version = node.chorded
      chorded_version.node.should == node
      chorded_version.should be_a(Node::Base::ChordedVersion)
    end
  end

  describe "stanza_version" do
    it "should be a stanza version of the node" do
      node = FactoryGirl.build(:base)
      stanza_version = node.stanza_version
      stanza_version.node.should == node
      stanza_version.should be_a(Node::Base::StanzaVersion)
    end
  end

  describe "ancestor(node_class)" do
    it "should be the first ancestor of the node matching the node class" do
      bar = FactoryGirl.build(:bar)
      line = FactoryGirl.build(:line, :name => 'Intro', :children => [bar])
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [line])

      bar.ancestor(Node::Stanza).should == stanza
    end

    it "should be nil if there is no ancestor matching the node class" do
      bar = FactoryGirl.build(:bar)
      bar.ancestor(Node::Stanza).should be_nil
    end
  end
end
