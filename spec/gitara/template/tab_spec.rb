require 'spec_helper'

describe Gitara::Template::Tab do
  it "can construct a template with a tab node" do
    tab_node = Node::Tab.new
    tab_template = Template::Tab.new(:tab => tab_node)
    tab_template.tab.should == tab_node
  end
end
