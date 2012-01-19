require 'spec_helper'

describe 'Tab' do
  describe "parse(text)" do
    it "can read a single voice" do
      text = <<-TEXT
        tab do
          voice "r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8"
        end
      TEXT

      tab = Node::Tab.parse(text)

      tab.voice_bars.should have(1).voice_bar
      tab.voice_bars[0].value =  %q|r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
    end

    it "can read multiple voice_bars" do
      text = <<-'STRING'
        tab do
          voice "<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8"
          voice "<f\4>4 <f\4>4 <c\5>4  <e\4>4"
        end
      STRING

      tab = Node::Tab.parse(text)
      tab.voice_bars.should have(2).voice_bars
      tab.voice_bars[0].value.should == %q|<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8|
      tab.voice_bars[0].id.should == 1
      tab.voice_bars[1].value.should == %q|<f\4>4 <f\4>4 <c\5>4  <e\4>4|
      tab.voice_bars[1].id.should == 2
    end

    it "can read a bar" do
      text = <<-TEXT
        tab do
          bar "Intro" do
            voice "r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8"
          end
        end
      TEXT

      tab = Node::Tab.parse(text)

      tab.bars.should have(1).bar
      tab.bars[0].should be_a(Node::Bar)

      bar = tab.bars[0]
      bar.name.should == "Intro"
      bar.id.should == 1
      bar.children.should have(1).child
    end
  end

  describe "voices" do
    it "should create a <max_number_of_voices> voices" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new.tap {|bar|
            bar.children = [
              Node::VoiceBar.new,
              Node::VoiceBar.new
            ]
          }
        ]
      }
      voices = tab.voices
      voices.should have(2).values
      voices[0].id.should == 1
      voices[1].id.should == 2
      voices.map(&:parent).uniq.should == [tab]
    end
  end

  describe "max_number_of_voices" do
    it "should be the max number of voice_bars in a bar" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new.tap {|bar|
            bar.children = [
              Node::VoiceBar.new,
              Node::VoiceBar.new
            ]
          }
        ]
      }
      tab.max_number_of_voices.should == 2
    end
  end

  describe "bars" do
    it "should include only the playable bar of the tab" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new(:name => 'Intro').tap {|bar|
            bar.children = [
              Node::VoiceBar.new,
              Node::VoiceBar.new
            ]
          },
          Node::Bar.new(:name => 'Intro')
        ]
      }

      tab.bars.map(&:id).should == [2]
    end
  end

  describe "playable_child" do
    it "should be the last child of the tab" do
      tab = Node::Tab.new.tap {|tab|
        tab.children = [
          Node::Bar.new(:name => 'Intro').tap {|bar|
            bar.children = [
              Node::VoiceBar.new,
              Node::VoiceBar.new
            ]
          },
          Node::Bar.new(:name => 'Intro')
        ]
      }

      tab.playable_child.id.should == 2
    end
  end
end
