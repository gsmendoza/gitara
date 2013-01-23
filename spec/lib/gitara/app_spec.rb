require 'spec_helper'

describe Gitara::App do
  describe "#export" do
    let(:app_test){AppTester.new(:run_lilypond => run_lilypond?)}
    
    Pow('examples').glob('/*.rb').each do |path|
      it "can convert #{path.name(false)} to lilypond" do
        app_test.name = path.name(false)
        app_test.run
        app_test.actual.should == app_test.expected
      end
    end
    
    after do
      if run_lilypond?
        app_test.should be_midi_generated  
        app_test.should be_pdf_generated  
      end
    end
  end
end
