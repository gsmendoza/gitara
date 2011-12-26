module Gitara
  class App < Thor
    desc "export PATH", "Export PATH to lilypond, pdf, and midi."
    def export(path)
      load(path)
      puts Gitara.tab.inspect
      #lilypond_file = Pow(Pow(path).basename + '.ly')
      #lilypond_file.write(Gitara::Template::Tab.new(:tab => tab).to_s)
      #`lilypond #{lilypond_file.to_s}`
    end
  end
end
