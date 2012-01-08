require 'spec_helper'

describe "Parser:" do
  let(:parser){ Parser.new }

  describe "it" do
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
  end

  describe "method_calls" do
    it "can be empty" do
      tokens = parser.method_calls.parse("")
      tokens[:method_calls].should == []
    end

    it "can have method calls" do
      text = <<-TEXT
        voice "a"
        voice "b"
      TEXT

      tokens = parser.method_calls.parse(text.strip)
      tokens[:method_calls].size.should == 2
      tokens[:method_calls][0][:value][:string].to_s.should == 'a'
      tokens[:method_calls][1][:value][:string].to_s.should == 'b'
    end
  end

  describe "method_call" do
    it "can be parsed without a block" do
      result = parser.method_call.parse('voice "a b c d e f g"')
      result[:method_id][:identifier].should == 'voice'
      result[:value][:string].should == 'a b c d e f g'
    end

    it "can be parsed with an empty block" do
      text = "tab do end"

      tokens = parser.method_call.parse(text)
      tokens[:method_id][:identifier].should == 'tab'
      tokens[:method_calls].should == []
    end
  end

  describe "block" do
    it "can be parsed if empty" do
      text = <<-TEXT
        do
        end
      TEXT

      tokens = parser.block.parse_with_debug(text.strip)
      tokens[:method_calls].should == []
    end

    it "can be parsed with method calls" do
      text = <<-TEXT
        do
          voice "a"
        end
      TEXT

      tokens = parser.block.parse(text.strip)
      tokens[:method_calls].size.should == 1
      tokens[:method_calls][0][:method_id][:identifier].should == "voice"
    end
  end

  describe "block_start_delimiter" do
    it "can be parsed" do
      parser.block_start_delimiter.should parse("do")
    end
  end

  describe "block_end_delimiter" do
    it "can be parsed" do
      parser.block_end_delimiter.should parse("end")
    end
  end

end

