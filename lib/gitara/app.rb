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
      tab = Gitara::Tab.parse(Pow(source_path).read)
      lilypond_name = Pow(source_path).name(false) + '.ly'
      lilypond_path = Pow(options['target-directory']) / lilypond_name
      lilypond_path.write(Gitara::Template::Tab.new(:tab => tab).render)

      if options['run-lilypond']
        `lilypond -o #{lilypond_path.parent / lilypond_path.name(false)} #{lilypond_path}`
      end
    end
  end
end
