require 'spec_helper'

describe Gitara do
  describe Dsl do
    describe "bar(name, &block)" do
      it "should add a bar with the name" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        dsl.bar 'Intro'

        dsl.node.own_children.should have(1).bar

        bar = dsl.node.own_children[0]
        bar.name.should == 'Intro'
        bar.own_children.should be_empty
      end

      it "should add the children declared in the block to the bar" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        note_set = Node::NoteSet.new

        dsl.bar 'Intro' do
          add note_set
        end

        dsl.node.own_children.should have(1).bar
        dsl.node.own_children[0].name.should == 'Intro'

        bar = dsl.node.own_children[0]
        bar.own_children.should have(1).note_set
        bar.own_children[0].should == note_set
      end
    end

    describe "add(child, &block)" do
      it "should add the child to the dsl's node" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        bar = Node::Bar.new(:name => 'Intro')

        dsl.add bar

        dsl.node.own_children.should have(1).bar
        dsl.node.own_children[0].should == bar
      end

      it "should add the children in the block to the child" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        bar = Node::Bar.new
        note_set = Node::NoteSet.new

        dsl.add bar do
          add note_set
        end

        dsl.node.own_children.should have(1).bar
        dsl.node.own_children[0].should == bar

        bar.own_children.should have(1).note_set
        bar.own_children[0].should == note_set
      end
    end

    describe "notes(value)" do
      it "should add a note set with the value" do
        dsl = Dsl.new(:node => Node::Bar.new)
        dsl.node.own_children.should be_empty

        dsl.notes 'test'

        dsl.node.own_children.should have(1).note_set
        dsl.node.own_children[0].value.should == 'test'
      end
    end

    describe "line(name, &block)" do
      it "should add a line with the name" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        dsl.line 'Intro'

        dsl.node.own_children.should have(1).line

        line = dsl.node.own_children[0]
        line.name.should == 'Intro'
        line.own_children.should be_empty
      end

      it "should add the children declared in the block to the line" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        bar = Node::Bar.new

        dsl.line 'Intro' do
          add bar
        end

        dsl.node.own_children.should have(1).line
        dsl.node.own_children[0].name.should == 'Intro'

        line = dsl.node.own_children[0]
        line.own_children.should have(1).bar
        line.own_children[0].should == bar
      end
    end

    describe "add_names(o)" do
      it "should add a node with o[:name] of o[:node_class] to the node" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        dsl.add_names :names => [:Intro, :Intro], :node_class => Node::Bar

        dsl.node.own_children.should have(2).bars
        dsl.node.own_children.each do |child|
          child.should be_a(Node::Bar)
          child.name.should == :Intro
        end
      end

      it "should add a node with nil name if the o[:names] is blank" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        dsl.add_names :names => [], :node_class => Node::Bar

        dsl.node.own_children.should have(1).bar
        dsl.node.own_children[0].attributes[:name].should be_nil
        dsl.node.own_children[0].should be_a(Node::Bar)
      end
    end

    describe "score(name, &block)" do
      it "should add a score with the name" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        dsl.score

        dsl.node.own_children.should have(1).score

        score = dsl.node.own_children[0]
        score.should be_a(Node::Score)
        score.own_children.should be_empty
      end

      it "should add the children declared in the block to the score" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        note_set = Node::NoteSet.new

        dsl.score do
          add note_set
        end

        dsl.node.own_children.should have(1).score

        score = dsl.node.own_children[0]
        score.own_children.should have(1).note_set
        score.own_children[0].should == note_set
      end
    end

    describe "stanza(name, &block)" do
      it "should add a stanza with the name" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        dsl.stanza 'Intro'

        dsl.node.own_children.should have(1).stanza

        stanza = dsl.node.own_children[0]
        stanza.name.should == 'Intro'
        stanza.own_children.should be_empty
      end

      it "should add the children declared in the block to the stanza" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.own_children.should be_empty

        line = Node::Line.new

        dsl.stanza 'Intro' do
          add line
        end

        dsl.node.own_children.should have(1).stanza
        dsl.node.own_children[0].name.should == 'Intro'

        stanza = dsl.node.own_children[0]
        stanza.own_children.should have(1).line
        stanza.own_children[0].should == line
      end
    end

    [:title, :composer, :arranger, :instrument, :midi_instrument].each do |property|
      describe "#{property}(value)" do
        it "should set the #{property} of the tab to value" do
          tab =Node::Tab.new

          dsl = Dsl.new(:node => tab)
          dsl.send property, "test"

          tab.send(property).should == "test"
        end
      end
    end
  end
end
