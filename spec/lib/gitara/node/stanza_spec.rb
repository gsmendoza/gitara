require 'spec_helper'

describe Gitara::Node::Stanza do
  describe "#heading_in_lilypond" do
    it "should allow the stanza's name to be added as a heading to the lilypond template" do
      stanza = FactoryBot.build(:stanza, :name => "Verse 1", :children => [
        FactoryBot.build(:line, :children => [
          FactoryBot.build(:bar),
          FactoryBot.build(:bar),
        ])
      ])

      tab = FactoryBot.build(:tab, :time => '4/4', :children => [stanza])

      expect(stanza.heading_in_lilypond).to eq('r1^"Verse 1" r1')
    end
  end

  describe "#heading_for_first_bar" do
    it "should be the time signature's rest bar value with the stanza name if the time signature will generate whole note bars" do
      bar = FactoryBot.build(:bar)
      stanza = FactoryBot.build(:stanza, :name => 'Intro', :children => [bar])
      tab = FactoryBot.build(:tab, :children => [stanza], :time => '4/4')

      expect(stanza.heading_for_first_bar).to eq('r1^"Intro"')
    end

    it "should attach the stanza name to the first rest note if the time signature will not generate whole note bars" do
      bar = FactoryBot.build(:bar)
      stanza = FactoryBot.build(:stanza, :name => 'Intro', :children => [bar])
      tab = FactoryBot.build(:tab, :children => [stanza], :time => '3/4')

      expect(stanza.heading_for_first_bar).to eq('r4^"Intro" r4 r4')
    end
  end
end
