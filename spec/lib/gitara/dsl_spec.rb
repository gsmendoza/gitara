require 'spec_helper'

describe Gitara do
  describe Dsl do
    describe "bar(name, &block)" do
      it "should add a bar with the name" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.children.should be_empty

        dsl.bar 'Intro'

        dsl.node.children.should have(1).bar

        bar = dsl.node.children[0]
        bar.name.should == 'Intro'
        bar.children.should be_empty
      end

      it "should add the children declared in the block to the bar" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.children.should be_empty

        note_set = Node::NoteSet.new

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
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.children.should be_empty

        bar = Node::Bar.new(:name => 'Intro')

        dsl.add bar

        dsl.node.children.should have(1).bar
        dsl.node.children[0].should == bar
      end

      it "should add the children in the block to the child" do
        dsl = Dsl.new(:node => Node::Tab.new)
        dsl.node.children.should be_empty

        bar = Node::Bar.new
        note_set = Node::NoteSet.new

        dsl.add bar do
          add note_set
        end

        dsl.node.children.should have(1).bar
        dsl.node.children[0].should == bar

        bar.children.should have(1).note_set
        bar.children[0].should == note_set
      end
    end

    describe "voice(value)" do
      it "should add a voice with the value" do
        dsl = Dsl.new(:node => Node::Bar.new)
        dsl.node.children.should be_empty

        dsl.voice 'test'

        dsl.node.children.should have(1).voice
        dsl.node.children[0].value.should == 'test'
      end
    end
  end
end
