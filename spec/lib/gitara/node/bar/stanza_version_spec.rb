require 'spec_helper'

describe 'StanzaVersion' do
  describe "value" do
    it "should be the stanza heading of the bar" do
      bar = Node::Bar.new(:children => [Node::NoteSet.new])
      stanza = Node::Stanza.new(:name => 'Intro', :children => [bar])

      stanza_version_of_bar = Node::Bar::StanzaVersion.new(:node => bar)
      stanza_version_of_bar.value.should == 'r1^"Intro"'
    end
  end
end

