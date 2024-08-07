require 'spec_helper'

describe Gitara::Dsl do
  describe "#bar" do
    it "should add a bar with the name" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.bar 'Intro'

      expect(dsl.node.children).to have(1).bar

      bar = dsl.node.children[0]
      expect(bar.name).to == 'Intro'
      expect(bar.children).to be_empty
    end

    it "should add the definition_children declared in the block to the bar" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      note_set = FactoryBot.build(:note_set)

      dsl.bar 'Intro' do
        add note_set
      end

      expect(dsl.node.children).to have(1).bar
      expect(dsl.node.children[0].name).to == 'Intro'

      bar = dsl.node.children[0]
      expect(bar.children).to have(1).note_set
      expect(bar.children[0]).to == note_set
    end
  end

  describe "#add" do
    it "should add the child to the dsl's node" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      bar = FactoryBot.build(:bar, :name => 'Intro')

      dsl.add bar

      expect(dsl.node.children).to have(1).bar
      expect(dsl.node.children[0]).to == bar
    end

    it "should add the definition_children in the block to the child" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      bar = FactoryBot.build(:bar, :children => [])
      note_set = FactoryBot.build(:note_set)

      dsl.add bar do
        add note_set
      end

      expect(dsl.node.children).to have(1).bar
      expect(dsl.node.children[0]).to == bar

      expect(bar.children).to have(1).note_set
      expect(bar.children[0]).to == note_set
    end
  end

  describe "#notes" do
    it "should add a note set with the value" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:bar, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.notes 'test'

      expect(dsl.node.children).to have(1).note_set
      expect(dsl.node.children[0].value).to == 'test'
    end
  end

  describe "#line" do
    it "should add a line with the name" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.line 'Intro'

      expect(dsl.node.children).to have(1).line

      line = dsl.node.children[0]
      expect(line.name).to == 'Intro'
      expect(line.children).to be_empty
    end

    it "should add the definition_children declared in the block to the line" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      bar = FactoryBot.build(:bar)

      dsl.line 'Intro' do
        add bar
      end

      expect(dsl.node.children).to have(1).line
      expect(dsl.node.children[0].name).to == 'Intro'

      line = dsl.node.children[0]
      expect(line.children).to have(1).bar
      expect(line.children[0]).to == bar
    end
    
    it "should allow breaking to be toggled" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      dsl.line :manual_break => false
      
      expect(dsl.node.children).to have(1).line
      expect(dsl.node.children[0].name).to == 'TabOneLineOne' # not manual_breaking=false
      expect(dsl.node.children[0].manual_break?).to be_false
    end
  end

  describe "#add_names" do
    it "should add a node with o[:name] of o[:node_class] to the node" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.add_names :names => [:Intro, :Intro], :node_class => Node::Bar

      expect(dsl.node.children).to have(2).bars
      dsl.node.children.each do |child|
        expect(child).to be_a(Node::Bar)
        expect(child.name).to == :Intro
      end
    end

    it "should add a node with nil name if the o[:names] is blank" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.add_names :names => [], :node_class => Node::Bar

      expect(dsl.node.children).to have(1).bar
      expect(dsl.node.children[0].attributes[:name]).to be_nil
      expect(dsl.node.children[0]).to be_a(Node::Bar)
    end
    
    it "should set o[:options] as attributes of the nodes" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.add_names :names => [:Intro, :Intro], :options => {:value => 1 }, :node_class => Node::Base

      expect(dsl.node.children).to have(2).nodes
      dsl.node.children.each do |child|
        expect(child.name).to == :Intro
        expect(child.value).to == 1
      end
    end
  end

  describe "#score" do
    it "should add a score with the name" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.score

      expect(dsl.node.children).to have(1).score

      score = dsl.node.children[0]
      expect(score).to be_a(Node::Score)
      expect(score.children).to be_empty
    end

    it "should add the definition_children declared in the block to the score" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      note_set = FactoryBot.build(:note_set)

      dsl.score do
        add note_set
      end

      expect(dsl.node.children).to have(1).score

      score = dsl.node.children[0]
      expect(score.children).to have(1).note_set
      expect(score.children[0]).to == note_set
    end
  end

  describe "#stanza" do
    it "should add a stanza with the name" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.stanza 'Intro'

      expect(dsl.node.children).to have(1).stanza

      stanza = dsl.node.children[0]
      expect(stanza.name).to == 'Intro'
      expect(stanza.children).to be_empty
    end

    it "should add the definition_children declared in the block to the stanza" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      line = FactoryBot.build(:line)

      dsl.stanza 'Intro' do
        add line
      end

      expect(dsl.node.children).to have(1).stanza
      expect(dsl.node.children[0].name).to == 'Intro'

      stanza = dsl.node.children[0]
      expect(stanza.children).to have(1).line
      expect(stanza.children[0]).to == line
    end
  end

  [:title, :composer, :arranger, :instrument, :key, :midi_instrument, :string_tunings, :tempo, :transposition].each do |property|
    describe "##{property}" do
      it "should set the #{property} of the tab to value" do
        tab = FactoryBot.build(:tab)

        dsl = FactoryBot.build(:dsl, :node => tab)
        dsl.send property, "test"

        expect(tab.send(property)).to == "test"
      end
    end
  end

  describe "#chords" do
    it "should add a chord set with the name" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.chords :Am, 'r4-"Am" r r r'

      expect(dsl.node.children).to have(1).chord_set

      chord_set = dsl.node.children[0]
      expect(chord_set.name).to == :Am
      expect(chord_set.value).to == 'r4-"Am" r r r'
    end
  end

  describe "#chords" do
    it "should add a bar with the name" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      expect(dsl.node.children).to be_empty

      dsl.chords :Am

      expect(dsl.node.children).to have(1).chord_set

      chord_set = dsl.node.children[0]
      expect(chord_set.name).to == :Am
    end
  end

  describe "#partial" do
    it "should set the specified duration of the bar node to duration" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:bar))
      expect(dsl.node.specified_duration).to be_nil

      dsl.partial 8

      expect(dsl.node.specified_duration).to == 8
    end
  end

  describe "#repeat" do
    it "should add a repeat with the value" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))

      dsl.repeat 2

      expect(dsl.node.children).to have(1).repeat

      repeat = dsl.node.children[0]
      expect(repeat.value).to == 2
      expect(repeat.children).to be_empty
    end

    it "should add the children declared in the block to the repeat" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))

      bar = FactoryBot.build(:bar)

      dsl.repeat 2 do
        add bar
      end

      expect(dsl.node.children).to have(1).repeat

      repeat = dsl.node.children[0]
      expect(repeat.children).to have(1).child
      expect(repeat.children[0]).to == bar
    end
  end

  describe "#alternative" do
    it "should add the children declared in the block to the alternative" do
      dsl = FactoryBot.build(:dsl, :node => FactoryBot.build(:tab, :children => []))
      bar = FactoryBot.build(:bar)

      dsl.alternative do
        add bar
      end

      expect(dsl.node.children).to have(1).alternative

      alternative = dsl.node.children[0]
      expect(alternative.children).to have(1).child
      expect(alternative.children[0]).to == bar
    end
  end
end
