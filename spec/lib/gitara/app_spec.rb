require 'spec_helper'

describe App do
  describe "export" do
    it "can convert a gitara file to lilypond" do
      app = Gitara::App.new
      app.invoke :export, ['examples/tab.gtr'], "target-directory" => test_tmp_dir.path, "run-lilypond" => false

      (test_tmp_dir / 'tab.ly').read.should == Pow('examples/tab.ly').read
    end
  end
end
