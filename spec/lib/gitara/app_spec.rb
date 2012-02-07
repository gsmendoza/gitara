require 'spec_helper'

describe App do
  describe "export" do
    it "can convert a tab without a reused bar to lilypond" do
      app = Gitara::App.new
      app.invoke :export, ['examples/tab.rb'], "target-directory" => test_tmp_dir.path, "run-lilypond" => false

      (test_tmp_dir / 'tab.ly').read.should == Pow('examples/tab.ly').read
    end
  end
end
