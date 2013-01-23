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

  describe "#heading_for_first_bar" do
    it "should be the time signature's rest bar value with the stanza name if the time signature will generate whole note bars" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '4/4')

      stanza.heading_for_first_bar.should == 'r1^"Intro"'
    end

    it "should attach the stanza name to the first rest note if the time signature will not generate whole note bars" do
      bar = FactoryGirl.build(:bar)
      stanza = FactoryGirl.build(:stanza, :name => 'Intro', :children => [bar])
      tab = FactoryGirl.build(:tab, :children => [stanza], :time => '3/4')

      stanza.heading_for_first_bar.should == 'r4^"Intro" r4 r4'
    end
  end
end
