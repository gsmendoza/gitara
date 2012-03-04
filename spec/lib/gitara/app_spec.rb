require 'spec_helper'

describe App do
  describe "export" do
    it "can convert a tab without a reused bar to lilypond" do
      app = FactoryGirl.build(:app)
      app.invoke :export, ['examples/tab.rb'], "target-directory" => test_tmp_dir.path, "run-lilypond" => false

      example = Pow('examples/tab.ly').read
      actual = (test_tmp_dir / 'tab.ly').read

      (Pow('tmp') / 'new-tab.ly').write actual if example != actual
      actual.should == example
    end
  end
end
