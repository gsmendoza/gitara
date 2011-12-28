require 'spec_helper'

describe 'Tab' do
  describe "parse(text)" do
    it "can read a single voice" do
      text = %q|voice: r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
      tab = Tab.parse(text)
      tab.voice.value =  %q|r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
    end
  end
end
