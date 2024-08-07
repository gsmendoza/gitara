require 'spec_helper'

describe Gitara::Node::Base do
  describe "#definition_children" do
    it "should be its own children if they exist" do
      child = FactoryBot.build(:base, :id => nil)

      parent = FactoryBot.build(:base)
      parent.children = [child]
      parent.definition_children.should == [child]
    end

    it "should be the children of its definition if the node is not a definition" do
      child = FactoryBot.build(:note_set)
      definition_bar = FactoryBot.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [child]
      }

      call_bar = FactoryBot.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryBot.build(:tab, :children => [definition_bar, call_bar])

      call_bar.definition_children.should == [child]
    end
  end

  describe "#children=" do
    it "should set the ids and parents of the children" do
      parent = FactoryBot.build(:base)
      parent.children = [FactoryBot.build(:base, :id => nil)]
      parent.children[0].id.should == 1
      parent.children[0].parent.should == parent
    end
  end

  describe "#add" do
    it "should set the id and parent of the child" do
      parent = FactoryBot.build(:base)

      parent.add FactoryBot.build(:base, :id => nil)
      parent.children[0].id.should == 1
      parent.children[0].parent.should == parent

      parent.add FactoryBot.build(:base, :id => nil)
      parent.children[1].id.should == 2
      parent.children[1].parent.should == parent
    end

    it "should set the id based on existing siblings having the same class as the child" do
      parent = FactoryBot.build(:base)

      bar_1 = FactoryBot.build(:bar)
      parent.add bar_1
      bar_1.id.should == 1

      line_1 = FactoryBot.build(:line)
      parent.add line_1
      line_1.id.should == 1

      bar_2 = FactoryBot.build(:bar)
      parent.add bar_2
      bar_2.id.should == 2
    end
  end

  describe "#definition" do
    it "should be the definition node which matches this node's name" do
      definition_bar = FactoryBot.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [
          FactoryBot.build(:note_set),
          FactoryBot.build(:note_set)
        ]
      }

      call_bar = FactoryBot.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryBot.build(:tab, :children => [definition_bar, call_bar])

      call_bar.send(:definition).should == definition_bar
    end
  end

  describe "#definition?" do
    it "should be true if this node has children" do
      definition_bar = FactoryBot.build(:bar, :name => 'Intro').tap {|bar|
        bar.add FactoryBot.build(:note_set)
        bar.add FactoryBot.build(:note_set)
      }
      definition_bar.should be_definition
    end

    it "should be true if the node has a value" do
      chord_set = FactoryBot.build(:chord_set, :name => :Am, :value =>'r4-"Am" r r r')
      chord_set.children.should be_empty
      chord_set.should be_definition
    end

    it "should be false if this node does not have children and it does not have a value" do
      call_bar = FactoryBot.build(:bar, :name => 'Intro', :children => [])
      call_bar.children.should be_empty
      call_bar.value.should be_nil
      call_bar.should_not be_definition
    end
  end

  describe "#value" do
    it "should convert slashes to backslashes" do
      node = FactoryBot.build(:base, :value => %q|notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"|)
      node.value.should == %q|notes "<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8"|
    end

    it "should work with non-strings" do
      node = FactoryBot.build(:base, :value => 1)
      node.value.should == 1
    end
  end

  describe "#voiced_as" do
    it "should return the voiced version of the node, if arg is a voice" do
      node = FactoryBot.build(:base)
      voice = FactoryBot.build(:voice)

      node_voice_pair = node.voiced_as(voice)
      node_voice_pair.should be_a(Node::Base::VoicedVersion)
      node_voice_pair.node.should == node
      node_voice_pair.voice.should == voice
    end

    it "should return the voiced versions of the node, if arg are voices" do
      node = FactoryBot.build(:base)
      voices = [FactoryBot.build(:voice), FactoryBot.build(:voice)]

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

  describe "#definitions" do
    it "should be itself if it is an instance of the klass" do
      node = FactoryBot.build(:bar)
      node.add FactoryBot.build(:note_set)
      node.should be_definition

      node.definitions(Node::Bar).should == [node]
    end

    it "should include descendants which are instances of klass" do
      node = FactoryBot.build(:base, :children => [
        FactoryBot.build(:bar, :children => [FactoryBot.build(:note_set)]),
        FactoryBot.build(:bar, :children => [FactoryBot.build(:note_set)])
      ])

      node.definitions(Node::Bar).should have(2).bars
    end
  end

  describe "#name" do
    it "should be the given name, if available" do
      FactoryBot.build(:bar, :name => :Intro).name.should == :Intro
    end

    it "should be based on the parent's name the node's class and id, if not available" do
      child = FactoryBot.build(:note_set)
      bar = FactoryBot.build(:bar, :name => :Intro, :children => [child])

      child.name.should == "IntroNoteSetOne"
    end

    it "should be based on the node's class and id, if there's no parent and the there's no given name" do
      child = FactoryBot.build(:note_set)
      child.name.should == "NoteSetOne"
    end
  end

  describe "#id" do
    it "should be 1 by default" do
      child = FactoryBot.build(:note_set)
      child.id.should == 1
    end
  end

  describe "#id_as_word" do
    it "should camelize if necessary" do
      node = FactoryBot.build(:base, :id => 24)
      node.id_as_word.should == "TwentyFour"
    end
  end

  describe "#definition_name" do
    it "should turn the name to a lilypond acceptable name" do
      node = FactoryBot.build(:base, :name => "Verse 1 line-2")
      node.definition_name.should == "VerseOneLineTwo"
    end
  end

  describe "#descendants" do
    it "should be itself if it is an instance of the klass" do
      tab = FactoryBot.build(:tab, :children => [FactoryBot.build(:bar)])
      tab.descendants(Node::Tab).should == [tab]
    end

    it "should include descendants which are instances of klass" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :name => :Intro, :children => [
          FactoryBot.build(:note_set)
        ])
      ])

      tab.descendants(Node::Bar).should have(1).bar
    end

    it "should follow the definitions of node references for descendants" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :name => :Intro, :children => [FactoryBot.build(:note_set)]),

        FactoryBot.build(:line, :name => 'Line 1', :children => [
          FactoryBot.build(:bar, :name => :Intro , :children => [])
        ]),

        FactoryBot.build(:stanza, :children => [
          FactoryBot.build(:line, :name => 'Line 1', :children => [])
        ])
      ])

      bar = tab.children[0]

      stanza = tab.children[2]
      stanza.descendants(Node::Bar).should == [bar]
    end
  end

  describe "#chorded" do
    it "should return the chorded version of the node" do
      node = FactoryBot.build(:base)
      chorded_version = node.chorded
      chorded_version.node.should == node
      chorded_version.should be_a(Node::Base::ChordedVersion)
    end
  end

  describe "#stanza_version" do
    it "should be a stanza version of the node" do
      node = FactoryBot.build(:base)
      stanza_version = node.stanza_version
      stanza_version.node.should == node
      stanza_version.should be_a(Node::Base::StanzaVersion)
    end
  end

  describe "#ancestor" do
    it "should be the first ancestor of the node matching the node class" do
      bar = FactoryBot.build(:bar)
      line = FactoryBot.build(:line, :name => 'Intro', :children => [bar])
      stanza = FactoryBot.build(:stanza, :name => 'Intro', :children => [line])

      bar.ancestor(Node::Stanza).should == stanza
    end

    it "should be nil if there is no ancestor matching the node class" do
      bar = FactoryBot.build(:bar)
      bar.ancestor(Node::Stanza).should be_nil
    end
  end

  describe "#call_value" do
    it "should be the call name by default" do
      node = FactoryBot.build(:base, :name => 'MyNode')
      node_version = Node::Base::NodeVersion.new(:node => node)
      node.call_value(node_version).should == '\nBaseMyNode'
    end
  end
end
