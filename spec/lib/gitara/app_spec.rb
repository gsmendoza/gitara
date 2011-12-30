require 'spec_helper'

describe App do
  describe "export" do
    it "can convert a gitara file to lilypond" do
      app = Gitara::App.new
      app.invoke :export, ['examples/multiple-voices.gtr'], "target-directory" => test_tmp_dir.path, "run-lilypond" => false

      (test_tmp_dir / 'multiple-voices.ly').read.should == Pow('examples/multiple-voices.ly').read
    end
  end
end
