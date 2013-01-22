require 'spec_helper'

describe Gitara::Node::Stanza do
  describe "#heading_in_lilypond" do
    it "should allow the stanza's name to be added as a heading to the lilypond template" do
      stanza = FactoryGirl.build(:stanza, :name => "Verse 1", :children => [
        FactoryGirl.build(:line, :children => [
          FactoryGirl.build(:bar),
          FactoryGirl.build(:bar),
        ])
      ])

      tab = FactoryGirl.build(:tab, :time => '4/4', :children => [stanza])

      stanza.heading_in_lilypond.should == 'r1^"Verse 1" r1'
    end
  end
end
