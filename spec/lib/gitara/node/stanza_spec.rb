require 'spec_helper'

describe 'Stanza' do
  describe "heading_in_lilypond" do
    it "should allow the stanza's name to be added as a heading to the lilypond template" do
      stanza = Node::Stanza.new(:name => "Verse 1").tap do |stanza|
        line = Node::Line.new
        line.add Node::Bar.new
        line.add Node::Bar.new

        stanza.add line
      end

      stanza.heading_in_lilypond.should == 'r1^"Verse 1" r'
    end
  end
end
