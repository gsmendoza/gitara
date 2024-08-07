# @private
class AppTester < Valuable
  has_value :name
  has_value :run_lilypond, :klass => :boolean, :default => false

  def run
    app = FactoryBot.build(:app)
    app.invoke :export, ["examples/#{name}.rb"], 
      "target-directory" => test_tmp_dir.path, 
      "run-lilypond" => self.run_lilypond?
    (Pow("tmp") / "#{name}.ly").write actual if self.expected != self.actual
  end

  def expected
    @expected ||= Utilities.read!(Pow("examples/#{name}.ly")).gsub(/\n\s+\n/, "\n")
  rescue PowError => e
    puts "#{e.message}. Copying actual result..."
    Pow("examples/#{name}.ly").write actual
    retry
  end

  def actual
    @actual ||= Utilities.read!((test_tmp_dir / "#{name}.ly")).gsub(/\n\s+\n/, "\n")
  end
  
  def midi_generated?
    (test_tmp_dir / "#{name}.midi").exist?
  end
  
  def pdf_generated?
    (test_tmp_dir / "#{name}.pdf").exist?
  end
end
