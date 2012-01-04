require 'spec_helper'
require 'parslet/rig/rspec'

describe "Parser" do
  let(:parser){ Parser.new }

  it "can parse spaces" do
    parser.space.should parse(" ")
    parser.space.should parse("\t")
    parser.space.should parse(" \t")
  end

  it "can parse an optional space" do
    parser.space?.should parse("")
  end

  it "can parse a string" do
    parser.string.parse('"test"')[:string].to_s.should == 'test'
    parser.string.parse('"test" ')[:string].to_s.should == 'test'
  end

  it "can parse an identifier" do
    parser.identifier.should parse('some_identifier')
    parser.identifier.parse('some_identifier ')[:identifier].to_s.should == 'some_identifier'
  end

  it "can parse a method call" do
    result = parser.method_call.parse('voice "a b c d e f g"')
    result[:method_id][:identifier].should == 'voice'
    result[:value][:string].should == 'a b c d e f g'
  end

  it "can parse a tab" do
    text = <<-TEXT
      voice "a"
      voice "b"
    TEXT

    tokens = parser.parse(text)
    tokens.size.should == 2
    tokens[0][:value][:string].to_s.should == 'a'
    tokens[1][:value][:string].to_s.should == 'b'
  end
end

