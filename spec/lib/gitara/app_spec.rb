require 'spec_helper'

describe Gitara::App do
  describe "#export" do
    it "can convert a tab to lilypond" do
      app_test = AppTester.new(:name => 'tab')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a partial to lilypond" do
      app_test = AppTester.new(:name => 'tab-with-partial')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with alternate tuning to lilypond" do
      app_test = AppTester.new(:name => 'tab-with-alternate-tuning')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a specified key signature to lilypond" do
      app_test = AppTester.new(:name => 'tab-with-key-signature')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with repeats to lilypond" do
      app_test = AppTester.new(:name => 'tab-with-repeats')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a specified time to lilypond" do
      app_test = AppTester.new(:name => 'tab-with-time-signature')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a line without a break to lilypond" do
      app_test = AppTester.new(:name => 'tab-with-line-with-no-break')
      app_test.run
      app_test.actual.should == app_test.expected
    end
  end
end
