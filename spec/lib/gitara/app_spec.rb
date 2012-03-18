require 'spec_helper'

describe App do
  class AppTest < Valuable
    has_value :name

    def run
      app = FactoryGirl.build(:app)
      app.invoke :export, ["examples/#{name}.rb"], "target-directory" => test_tmp_dir.path, "run-lilypond" => false
      (Pow("tmp") / "#{name}.ly").write actual if self.expected != self.actual
    end

    def expected
      @expected ||= Pow("examples/#{name}.ly").read!.gsub(/\n\s+\n/, "\n")
    rescue PowError => e
      puts "#{e.message}. Copying actual result..."
      Pow("examples/#{name}.ly").write actual
      retry
    end

    def actual
      @actual ||= (test_tmp_dir / "#{name}.ly").read!.gsub(/\n\s+\n/, "\n")
    end
  end

  describe "export" do
    it "can convert a tab to lilypond" do
      app_test = AppTest.new(:name => 'tab')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a partial to lilypond" do
      app_test = AppTest.new(:name => 'tab-with-partial')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with alternate tuning to lilypond" do
      app_test = AppTest.new(:name => 'tab-with-alternate-tuning')
      app_test.run
      app_test.actual.should == app_test.expected
    end

    it "can convert a tab with a specified key signature to lilypond" do
      app_test = AppTest.new(:name => 'tab-with-key-signature')
      app_test.run
      app_test.actual.should == app_test.expected
    end
  end
end
