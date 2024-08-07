module Gitara
  class App < Thor
    desc "export PATH [OPTIONS]...", "Export PATH to lilypond and friends."

    method_option "target-directory",
      :aliases => "-t",
      :default => '.',
      :desc => "Export files to TARGET-DIRECTORY",
      :type => :string

    method_option "run-lilypond",
      :aliases => "-l",
      :default => true,
      :desc => "Run lilypond program after generating lilypond file", :default => true,
      :type => :boolean

    def export(source_path)
      load source_path
      tab = Gitara.tab
      lilypond_name = Pathname.new(source_path).name(false) + '.ly'
      lilypond_path = Pathname.new(options['target-directory']) / lilypond_name
      lilypond_path.write(Gitara.render('tab', tab))

      if options['run-lilypond']
        `lilypond -o #{lilypond_path.parent / lilypond_path.name(false)} #{lilypond_path}`
      end
    end
  end
end
