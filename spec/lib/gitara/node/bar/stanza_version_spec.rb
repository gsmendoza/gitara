require 'spec_helper'

describe Gitara::Node::Bar::StanzaVersion do
  describe "#value" do
    it "should be the stanza heading of the bar" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])

      stanza_version_of_bar = FactoryGirl.build(:stanza_version_bar, :node => bar)
      stanza_version_of_bar.value.should == 'r1^"Intro"'
    end
  end
end

