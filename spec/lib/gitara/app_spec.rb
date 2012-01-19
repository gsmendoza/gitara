require 'spec_helper'

describe App do
  describe "export" do
    it "can convert a tab without a reused bar to lilypond" do
      app = Gitara::App.new
      app.invoke :export, ['examples/tab-with-bar.gtr'], "target-directory" => test_tmp_dir.path, "run-lilypond" => false

      (test_tmp_dir / 'tab-with-bar.ly').read.should == Pow('examples/tab.ly').read
    end

    it "can convert a tab with a reused bar to lilypond" do
      app = Gitara::App.new
      app.invoke :export, ['examples/tab-with-reused-bar.gtr'], "target-directory" => test_tmp_dir.path, "run-lilypond" => false

      (test_tmp_dir / 'tab-with-reused-bar.ly').read.should == Pow('examples/tab.ly').read
    end
  end
end
