require 'spec_helper'

describe 'Bar' do
  describe "voice_bars" do
    it "should be the voice bars of its definition" do
      definition_bar = Node::Bar.new(:name => 'Intro').tap {|bar|
        bar.children = [
          Node::VoiceBar.new,
          Node::VoiceBar.new
        ]
      }

      call_bar = Node::Bar.new(:name => 'Intro')

      tab = Node::Tab.new.tap {|tab|
        tab.children = [definition_bar, call_bar]
      }

      call_bar.voice_bars.should have(2).voice_bars
    end
  end
end
