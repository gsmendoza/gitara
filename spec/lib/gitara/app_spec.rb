require 'spec_helper'

describe Gitara::App do
  describe "#export" do
    let(:app_test){AppTester.new(:run_lilypond => run_lilypond?)}
    
    Pathname.new('examples').glob('/*.rb').each do |path|
      it "can convert #{path.name(false)} to lilypond" do
        app_test.name = path.name(false)
        app_test.run
        expect(app_test.actual).to eq(app_test.expected)
      end
    end
    
    after do
      if run_lilypond?
        expect(app_test).to be_midi_generated
        expect(app_test).to be_pdf_generated
      end
    end
  end
end
