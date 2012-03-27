require 'spec_helper'

describe Gitara do
  describe Dsl do
    describe "bar(name, &block)" do
      it "should add a bar with the name" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.bar 'Intro'

        dsl.node.children.should have(1).bar

        bar = dsl.node.children[0]
        bar.name.should == 'Intro'
        bar.children.should be_empty
      end

      it "should add the definition_children declared in the block to the bar" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        note_set = FactoryGirl.build(:note_set)

        dsl.bar 'Intro' do
          add note_set
        end

        dsl.node.children.should have(1).bar
        dsl.node.children[0].name.should == 'Intro'

        bar = dsl.node.children[0]
        bar.children.should have(1).note_set
        bar.children[0].should == note_set
      end
    end

    describe "add(child, &block)" do
      it "should add the child to the dsl's node" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        bar = FactoryGirl.build(:bar, :name => 'Intro')

        dsl.add bar

        dsl.node.children.should have(1).bar
        dsl.node.children[0].should == bar
      end

      it "should add the definition_children in the block to the child" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        bar = FactoryGirl.build(:bar, :children => [])
        note_set = FactoryGirl.build(:note_set)

        dsl.add bar do
          add note_set
        end

        dsl.node.children.should have(1).bar
        dsl.node.children[0].should == bar

        bar.children.should have(1).note_set
        bar.children[0].should == note_set
      end
    end

    describe "notes(value)" do
      it "should add a note set with the value" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:bar, :children => []))
        dsl.node.children.should be_empty

        dsl.notes 'test'

        dsl.node.children.should have(1).note_set
        dsl.node.children[0].value.should == 'test'
      end
    end

    describe "line(name, &block)" do
      it "should add a line with the name" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.line 'Intro'

        dsl.node.children.should have(1).line

        line = dsl.node.children[0]
        line.name.should == 'Intro'
        line.children.should be_empty
      end

      it "should add the definition_children declared in the block to the line" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        bar = FactoryGirl.build(:bar)

        dsl.line 'Intro' do
          add bar
        end

        dsl.node.children.should have(1).line
        dsl.node.children[0].name.should == 'Intro'

        line = dsl.node.children[0]
        line.children.should have(1).bar
        line.children[0].should == bar
      end
    end

    describe "add_names(o)" do
      it "should add a node with o[:name] of o[:node_class] to the node" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.add_names :names => [:Intro, :Intro], :node_class => Node::Bar

        dsl.node.children.should have(2).bars
        dsl.node.children.each do |child|
          child.should be_a(Node::Bar)
          child.name.should == :Intro
        end
      end

      it "should add a node with nil name if the o[:names] is blank" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.add_names :names => [], :node_class => Node::Bar

        dsl.node.children.should have(1).bar
        dsl.node.children[0].attributes[:name].should be_nil
        dsl.node.children[0].should be_a(Node::Bar)
      end
    end

    describe "score(name, &block)" do
      it "should add a score with the name" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.score

        dsl.node.children.should have(1).score

        score = dsl.node.children[0]
        score.should be_a(Node::Score)
        score.children.should be_empty
      end

      it "should add the definition_children declared in the block to the score" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        note_set = FactoryGirl.build(:note_set)

        dsl.score do
          add note_set
        end

        dsl.node.children.should have(1).score

        score = dsl.node.children[0]
        score.children.should have(1).note_set
        score.children[0].should == note_set
      end
    end

    describe "stanza(name, &block)" do
      it "should add a stanza with the name" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.stanza 'Intro'

        dsl.node.children.should have(1).stanza

        stanza = dsl.node.children[0]
        stanza.name.should == 'Intro'
        stanza.children.should be_empty
      end

      it "should add the definition_children declared in the block to the stanza" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        line = FactoryGirl.build(:line)

        dsl.stanza 'Intro' do
          add line
        end

        dsl.node.children.should have(1).stanza
        dsl.node.children[0].name.should == 'Intro'

        stanza = dsl.node.children[0]
        stanza.children.should have(1).line
        stanza.children[0].should == line
      end
    end

    [:title, :composer, :arranger, :instrument, :key, :midi_instrument, :string_tunings, :tempo, :transposition].each do |property|
      describe "#{property}(value)" do
        it "should set the #{property} of the tab to value" do
          tab = FactoryGirl.build(:tab)

          dsl = FactoryGirl.build(:dsl, :node => tab)
          dsl.send property, "test"

          tab.send(property).should == "test"
        end
      end
    end

    describe "chords(name, value)" do
      it "should add a chord set with the name" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.chords :Am, 'r4-"Am" r r r'

        dsl.node.children.should have(1).chord_set

        chord_set = dsl.node.children[0]
        chord_set.name.should == :Am
        chord_set.value.should == 'r4-"Am" r r r'
      end
    end

    describe "chords(name)" do
      it "should add a bar with the name" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        dsl.node.children.should be_empty

        dsl.chords :Am

        dsl.node.children.should have(1).chord_set

        chord_set = dsl.node.children[0]
        chord_set.name.should == :Am
      end
    end

    describe "partial(duration)" do
      it "should set the specified duration of the bar node to duration" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:bar))
        dsl.node.specified_duration.should be_nil

        dsl.partial 8

        dsl.node.specified_duration.should == 8
      end
    end

    describe "repeat(value)" do
      it "should add a repeat with the value" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))

        dsl.repeat 2

        dsl.node.children.should have(1).repeat

        repeat = dsl.node.children[0]
        repeat.value.should == 2
        repeat.children.should be_empty
      end

      it "should add the children declared in the block to the repeat" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))

        bar = FactoryGirl.build(:bar)

        dsl.repeat 2 do
          add bar
        end

        dsl.node.children.should have(1).repeat

        repeat = dsl.node.children[0]
        repeat.children.should have(1).child
        repeat.children[0].should == bar
      end
    end

    describe "alternative(value)" do
      it "should add the children declared in the block to the alternative" do
        dsl = FactoryGirl.build(:dsl, :node => FactoryGirl.build(:tab, :children => []))
        bar = FactoryGirl.build(:bar)

        dsl.alternative do
          add bar
        end

        dsl.node.children.should have(1).alternative

        alternative = dsl.node.children[0]
        alternative.children.should have(1).child
        alternative.children[0].should == bar
      end
    end
  end
end
