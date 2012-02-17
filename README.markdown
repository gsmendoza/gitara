Gitara is a Lilypond processor for guitar tablatures.


Installation
------------

    gem install gitara

You need to have [lilypond](http://lilypond.org) 2.12 or higher to generate pdfs and midis.


Usage
------

    gitara export PATH [OPTIONS]...

This generates a lilypond .ly file for PATH and calls lilypond to export the .ly file to pdf and midi. Please see `gitara help export` for the available options.


Syntax
------

Gitara is a Ruby DSL. A typical Gitara file will have the following structure:

    Gitara.define do
      score do
        line do
          bar do
            notes "c d e f g a b c"
          end
        end
      end
    end


Bars
----

Bars are the smallest expressions in Gitara, that is, a gitara file must have at least one bar. The notes inside a bar follow [Lilypond syntax](http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation).

    Gitara.define do
      bar do
        notes "c d e f g a b c"
      end
    end

With Gitara, it's easier to write notes using [absolute note names](http://lilypond.org/doc/v2.12/Documentation/learning/absolute-note-names) instead of relative note names. This is because we'll be musical expression often in Gitara (see Reusing bars below).


Multiple voices
---------------

If the bar has more than one note line, then each note line is a voice:

    Gitara.define do
      bar do
        notes "c d e f g a b c"
        notes "c' d' e' f' g' a' b' c'"
      end
    end

The tab above will play "c d e f g a b c" and "c' d' e' f' g' a' b' c'" simultaneously,
not sequentially.


Reusing bars
------------

If you want to repeat a bar, you can name the bar and call it later:

    Gitara.define do
      score do
        bar :Intro do
          notes "c d e f g a b c"
          notes "c' d' e' f' g' a' b' c'"
        end

        bar :Intro
      end
    end

This will generate a tab with two Intro bars. It's important to group the
two bars inside a score, because...


Only the last expression under Gitara.define will be generated
--------------------------------------------------------------

When writing a tab, oftentimes you want to generate only a part of the tab for
isolation and testing. Gitara makes this easy by generating a lilypond file
only for the last expression under Gitara.define. For example:

    Gitara.define do
      bar do
        notes "c d e f"
      end

      bar do
        notes "g a b c"
      end
    end

This tab will generate only the second bar (notes "g a b c"). If you want Gitara
to generate both bars, group them inside a score.

    Gitara.define do
      score do
        bar do
          notes "c d e f"
        end

        bar do
          notes "g a b c"
        end
      end
    end

If you want to generate a particular bar inside the score, you can copy it after the score:

    Gitara.define do
      score do
        bar do
          notes "c d e f"
        end

        bar do
          notes "g a b c"
        end
      end

      bar do
        notes "c d e f"
      end
    end

Or you define the bar to call later:

    Gitara.define do
      bar :FirstBar do
        notes "c d e f"
      end

      score do
        bar :FirstBar

        bar do
          notes "g a b c"
        end
      end

      bar :FirstBar
    end


Calling multiple bars
---------------------

You can call multiple bars in a single line:

    bar :BayangMagiliw, :PerlasNgSilanganan, :AlabNgPuso, :SaDibdibMoyBuhay


Lines
-----

You can group bars in a line:

    line :LineOne do
      bar :BayangMagiliw, :PerlasNgSilanganan, :AlabNgPuso, :SaDibdibMoyBuhay
    end

Lines are manually breaked with [\\break](http://lilypond.org/doc/v2.12/Documentation/notation/line-breaking).


Notes with single quotes and backslashes
----------------------------------------

In Lilypond syntax, single quotes denote octaves while backslashes denote string numbers. So, the c note in the second string is written as

    c'\2

Since a Gitara file is a Ruby program, you have to be careful with backslashes when writing notes like the one above. Ruby provides two ways (I know of) to preserve the backslash in the note above:

    notes %q|c'\2|

or

    notes "c'\\2"

Gitara provides a third option: it will automatically convert slashes to backslashes. This way, you can write the note above as

    notes "c'/2"

Prettier and easier to search and replace.


Workflow
--------

I'm no Lilypond expert (heh). When writing a tab, I use [TuxGuitar](http://tuxguitar.herac.com.ar) to transcribe a set of notes (usually just one bar). I then export the TuxGuitar tab to lilypond so that I can get the lilypond notes. I then place the notes inside my Gitara tab. This workflow allows me to use TuxGuitar's GUI for transcribing notes while allowing me to use Gitara's features for naming bars and reusing them.


To do
-----

For version 1, I want to convert this lilypond file I wrote to Gitara format:

* [https://github.com/gsmendoza/tabs/tree/master/aimee-mann-wise-up](https://github.com/gsmendoza/tabs/tree/master/aimee-mann-wise-up)

The remaining features are:

1. Properties like the title and authors.
2. Stanza labels.
3. Chord labels
