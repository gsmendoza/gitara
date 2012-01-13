require 'spec_helper'

describe Node::VoiceBar do
  describe "definition_name" do
    it "should be the name of the voice_bar in a lilypond variable definition statement" do
      voice_bar = Node::VoiceBar.new(:id => 1, :parent => Node::Bar.new(:name => 'Intro'))
      voice_bar.definition_name.should == "vOneBarIntro"
    end
  end
end
