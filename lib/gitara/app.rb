module Gitara
  class App < Thor
    desc "export PATH", "Export PATH to lilypond, pdf, and midi."
    def export(path)
      load(path)
      lilypond_name = Pow(path).name(false) + '.ly'
      Pow(lilypond_name).write(Gitara::Template::Tab.new(:tab => Gitara.tab).render)
      `lilypond #{lilypond_name}`
    end
  end
end
