require 'spec_helper'

describe Gitara::Template::Tab do
  it "can construct a template with a tab" do
    tab = Gitara::Tab.new
    tab_template = Template::Tab.new(:tab => tab)
    tab_template.tab.should == tab
  end
end
