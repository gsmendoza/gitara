require 'spec_helper'

describe App do
  describe "export" do
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
  end
end
