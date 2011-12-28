require 'spec_helper'

describe Node::Voice do
  describe "parse(text)" do
    it "should get the value from the text" do
      text = %q|voice: r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|

      voice = Node::Voice.parse(text)
      voice.value.should == %q|r8 <d'\2>16( <c'\2>8.) <a\3>16 <c'\2>8. <d'\2>16 <e'\1>8. <g\3>8|
    end
  end
end
