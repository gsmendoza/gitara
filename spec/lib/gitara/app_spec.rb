require 'spec_helper'

describe Gitara::App do
  describe "#export" do
    let(:app_test){AppTester.new(:run_lilypond => run_lilypond?)}
    
    it "can convert a tab to lilypond" do
      app_test.name = 'tab'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a partial to lilypond" do
      app_test.name = 'tab-with-partial'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with alternate tuning to lilypond" do
      app_test.name = 'tab-with-alternate-tuning'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a specified key signature to lilypond" do
      app_test.name = 'tab-with-key-signature'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with repeats to lilypond" do
      app_test.name = 'tab-with-repeats'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a specified time to lilypond" do
      app_test.name = 'tab-with-time-signature'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a line without a break to lilypond" do
      app_test.name = 'tab-with-line-with-no-break'
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a reused bar inside a stanza to lilypond" do
      app_test.name = 'tab-with-reused-bar-in-stanza'
      app_test.run
      app_test.actual.should == app_test.expected
    end
    
    after do
      if run_lilypond?
        app_test.should be_midi_generated  
        app_test.should be_pdf_generated  
      end
    end
  end
end
