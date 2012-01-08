require 'spec_helper'

describe 'Tab' do
  describe "parse(text)" do
    it "can read a single voice" do
      text = <<-TEXT
        tab do
          voice "r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8"
        end
      TEXT

      tab = Tab.parse(text)

      tab.voices.should have(1).voice
      tab.voices[0].value =  %q|r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
    end

    it "can read multiple voices" do
      text = <<-'STRING'
        tab do
          voice "<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8"
          voice "<f\4>4 <f\4>4 <c\5>4  <e\4>4"
        end
      STRING

      tab = Tab.parse(text)
      tab.voices.should have(2).voices
      tab.voices[0].value.should == %q|<g'\1>8 <a\3>8 <g'\1>8 <a\3>16 <g'\1>8 <g\3>16 <e'\1>4 <g\3>8|
      tab.voices[0].id.should == 1
      tab.voices[1].value.should == %q|<f\4>4 <f\4>4 <c\5>4  <e\4>4|
      tab.voices[1].id.should == 2
    end
  end
end
