require 'spec_helper'

describe Gitara::Node::Base do
  describe "#definition_children" do
    it "should be its own children if they exist" do
      child = FactoryBot.build(:base, :id => nil)

      parent = FactoryBot.build(:base)
      parent.children = [child]
      expect(parent.definition_children).to eq([child])
    end

    it "should be the children of its definition if the node is not a definition" do
      child = FactoryBot.build(:note_set)
      definition_bar = FactoryBot.build(:bar, :name => 'Intro').tap {|bar|
        bar.children = [child]
      }

      call_bar = FactoryBot.build(:bar, :name => 'Intro', :children => [])

      tab = FactoryBot.build(:tab, :children => [definition_bar, call_bar])

      expect(call_bar.definition_children).to eq([child])
    end
  end

  describe "#children=" do
    it "should set the ids and parents of the children" do
      parent = FactoryBot.build(:base)
      parent.children = [FactoryBot.build(:base, :id => nil)]
      expect(parent.children[0].id).to eq(1)
      expect(parent.children[0].parent).to eq(parent)
    end
  end

  describe "#add" do
    it "should set the id and parent of the child" do
      parent = FactoryBot.build(:base)

      parent.add FactoryBot.build(:base, :id => nil)
      expect(parent.children[0].id).to eq(1)
      expect(parent.children[0].parent).to eq(parent)

      parent.add FactoryBot.build(:base, :id => nil)
      expect(parent.children[1].id).to eq(2)
      expect(parent.children[1].parent).to eq(parent)
    end

    it "should set the id based on existing siblings having the same class as the child" do
      parent = FactoryBot.build(:base)

      bar_1 = FactoryBot.build(:bar)
      parent.add bar_1
      expect(bar_1.id).to eq(1)

      line_1 = FactoryBot.build(:line)
      parent.add line_1
      expect(line_1.id).to eq(1)

      bar_2 = FactoryBot.build(:bar)
      parent.add bar_2
      expect(bar_2.id).to eq(2)
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

      expect(call_bar.send(:definition)).to eq(definition_bar)
    end
  end

  describe "#definition?" do
    it "should be true if this node has children" do
      definition_bar = FactoryBot.build(:bar, :name => 'Intro').tap {|bar|
        bar.add FactoryBot.build(:note_set)
        bar.add FactoryBot.build(:note_set)
      }
      expect(definition_bar).to be_definition
    end

    it "should be true if the node has a value" do
      chord_set = FactoryBot.build(:chord_set, :name => :Am, :value =>'r4-"Am" r r r')
      expect(chord_set.children).to be_empty
      expect(chord_set).to be_definition
    end

    it "should be false if this node does not have children and it does not have a value" do
      call_bar = FactoryBot.build(:bar, :name => 'Intro', :children => [])
      expect(call_bar.children).to be_empty
      expect(call_bar.value).to be_nil
      expect(call_bar).to_not be_definition
    end
  end

  describe "#value" do
    it "should convert slashes to backslashes" do
      node = FactoryBot.build(:base, :value => %q|notes "<g'/1>8 <a/3>8 <g'/1>8 <a/3>16 <g'/1>8 <g/3>16 <e'/1>4 <g/3>8"|)
      expect(node.value).to eq(%q|notes "<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8"|)
    end

    it "should work with non-strings" do
      node = FactoryBot.build(:base, :value => 1)
      expect(node.value).to eq(1)
    end
  end

  describe "#voiced_as" do
    it "should return the voiced version of the node, if arg is a voice" do
      node = FactoryBot.build(:base)
      voice = FactoryBot.build(:voice)

      node_voice_pair = node.voiced_as(voice)
      expect(node_voice_pair).to be_a(Node::Base::VoicedVersion)
      expect(node_voice_pair.node).to eq(node)
      expect(node_voice_pair.voice).to eq(voice)
    end

    it "should return the voiced versions of the node, if arg are voices" do
      node = FactoryBot.build(:base)
      voices = [FactoryBot.build(:voice), FactoryBot.build(:voice)]

      node_voice_pairs = node.voiced_as(voices)
      expect(node_voice_pairs.size).to eq(2)

      node_voice_pairs.each do |pair|
        expect(pair).to be_a(Node::Base::VoicedVersion)
        expect(pair.node).to eq(node)
      end

      expect(node_voice_pairs[0].voice).to eq(voices[0])
      expect(node_voice_pairs[1].voice).to eq(voices[1])
    end
  end

  describe "#definitions" do
    it "should be itself if it is an instance of the klass" do
      node = FactoryBot.build(:bar)
      node.add FactoryBot.build(:note_set)
      expect(node).to be_definition

      expect(node.definitions(Node::Bar)).to eq([node])
    end

    it "should include descendants which are instances of klass" do
      node = FactoryBot.build(:base, :children => [
        FactoryBot.build(:bar, :children => [FactoryBot.build(:note_set)]),
        FactoryBot.build(:bar, :children => [FactoryBot.build(:note_set)])
      ])

      expect(node.definitions(Node::Bar)).to have(2).bars
    end
  end

  describe "#name" do
    it "should be the given name, if available" do
      expect(FactoryBot.build(:bar, :name => :Intro).name).to eq(:Intro)
    end

    it "should be based on the parent's name the node's class and id, if not available" do
      child = FactoryBot.build(:note_set)
      bar = FactoryBot.build(:bar, :name => :Intro, :children => [child])

      expect(child.name).to eq("IntroNoteSetOne")
    end

    it "should be based on the node's class and id, if there's no parent and the there's no given name" do
      child = FactoryBot.build(:note_set)
      expect(child.name).to eq("NoteSetOne")
    end
  end

  describe "#id" do
    it "should be 1 by default" do
      child = FactoryBot.build(:note_set)
      expect(child.id).to eq(1)
    end
  end

  describe "#id_as_word" do
    it "should camelize if necessary" do
      node = FactoryBot.build(:base, :id => 24)
      expect(node.id_as_word).to eq("TwentyFour")
    end
  end

  describe "#definition_name" do
    it "should turn the name to a lilypond acceptable name" do
      node = FactoryBot.build(:base, :name => "Verse 1 line-2")
      expect(node.definition_name).to eq("VerseOneLineTwo")
    end
  end

  describe "#descendants" do
    it "should be itself if it is an instance of the klass" do
      tab = FactoryBot.build(:tab, :children => [FactoryBot.build(:bar)])
      expect(tab.descendants(Node::Tab)).to eq([tab])
    end

    it "should include descendants which are instances of klass" do
      tab = FactoryBot.build(:tab, :children => [
        FactoryBot.build(:bar, :name => :Intro, :children => [
          FactoryBot.build(:note_set)
        ])
      ])

      expect(tab.descendants(Node::Bar)).to have(1).bar
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
      expect(stanza.descendants(Node::Bar)).to eq([bar])
    end
  end

  describe "#chorded" do
    it "should return the chorded version of the node" do
      node = FactoryBot.build(:base)
      chorded_version = node.chorded
      expect(chorded_version.node).to eq(node)
      expect(chorded_version).to be_a(Node::Base::ChordedVersion)
    end
  end

  describe "#stanza_version" do
    it "should be a stanza version of the node" do
      node = FactoryBot.build(:base)
      stanza_version = node.stanza_version
      expect(stanza_version.node).to eq(node)
      expect(stanza_version).to be_a(Node::Base::StanzaVersion)
    end
  end

  describe "#ancestor" do
    it "should be the first ancestor of the node matching the node class" do
      bar = FactoryBot.build(:bar)
      line = FactoryBot.build(:line, :name => 'Intro', :children => [bar])
      stanza = FactoryBot.build(:stanza, :name => 'Intro', :children => [line])

      expect(bar.ancestor(Node::Stanza)).to eq(stanza)
    end

    it "should be nil if there is no ancestor matching the node class" do
      bar = FactoryBot.build(:bar)
      expect(bar.ancestor(Node::Stanza)).to be_nil
    end
  end

  describe "#call_value" do
    it "should be the call name by default" do
      node = FactoryBot.build(:base, :name => 'MyNode')
      node_version = Node::Base::NodeVersion.new(:node => node)
      expect(node.call_value(node_version)).to eq('\nBaseMyNode')
    end
  end
end
