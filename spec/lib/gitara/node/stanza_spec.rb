require 'spec_helper'

describe 'Stanza' do
  describe "heading_in_lilypond" do
    it "should allow the stanza's name to be added as a heading to the lilypond template" do
      stanza = FactoryGirl.build(:stanza, :name => "Verse 1", :children => [
        FactoryGirl.build(:line, :children => [
          FactoryGirl.build(:bar),
          FactoryGirl.build(:bar),
        ])
      ])

      stanza.heading_in_lilypond.should == 'r1^"Verse 1" r'
    end
  end
end
