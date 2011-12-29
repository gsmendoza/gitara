require 'spec_helper'

describe Template::Tab do
  it "can construct a template with a tab" do
    tab = Gitara::Tab.new
    tab_template = Template::Tab.new(:tab => tab)
    tab_template.tab.should == tab
  end

  describe "voices" do
    it "should be the voices of the tab" do
      voice = Node::Voice.new
      tab = Gitara::Tab.new
      tab.should_receive(:voices).and_return([voice])

      tab_template = Template::Tab.new(:tab => tab)
      tab_template.voices.should == [voice]
    end
  end
end
