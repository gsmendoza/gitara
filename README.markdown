Gitara is a Ruby DSL for generating Lilypond guitar tablatures


Installation
------------

    gem install gitara

You need to have [lilypond](http://lilypond.org) 2.12 or higher to generate pdfs and midis.


Usage
------

    gitara export PATH [OPTIONS]...

This will generate a lilypond .ly file and then call lilypond to export the .ly file to pdf and midi. Please see `gitara help export` for the available options.


Syntax
------

Gitara is a Ruby DSL. A typical Gitara file will have the following structure:

    Gitara.define do
      score do
        stanza "Verse 1" do
          line do
            bar do
              notes "c d e f g a b c"
            end
          end
        end
      end
    end

You can find examples in the examples directory.


Bars
----

Bars are the smallest expressions in Gitara, that is, a gitara file must have at least one bar. The notes inside a bar follow [Lilypond syntax](http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation).

    Gitara.define do
      bar do
        notes "c d e f g a b c"
      end
    end

With Gitara, it's easier to write notes using [absolute note names](http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Writing-pitches#Absolute-octave-entry) instead of relative note names. This is because we'll be reusing bars and other Gitara expressions (see Reusing bars below).


Multiple voices
---------------

Each line of notes in a bar is a [voice](http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Voices-contain-music):

    Gitara.define do
      bar do
        notes "c d e f g a b c"
        notes "c' d' e' f' g' a' b' c'"
      end
    end

The tab above will play "c d e f g a b c" and "c' d' e' f' g' a' b' c'" simultaneously, not sequentially.


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

This will generate a tab with two Intro bars. It's important to group the two bars inside a score, because...


Only the last expression under Gitara.define will be generated
--------------------------------------------------------------

When writing a tab, oftentimes you want to generate only a part of the tab for testing purposes. Gitara makes this easy by processing only for the last expression under Gitara.define. For example:

    Gitara.define do
      bar do
        notes "c d e f"
      end

      bar do
        notes "g a b c"
      end
    end

This tab will generate only the second bar (notes "g a b c"). If you want Gitara to generate both bars, group them inside a score.

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

Or you can define the bar to call later:

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

Lines are manually breaked with [\\break](http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Line-breaking).

Like bars, lines can be named, reused, etc.


Stanzas
-------

The names of a stanza will be displayed at the top of the stanza's first bar.


Properties
----------

A gitara file can have the following optional properties:

    Gitara.define do
      title "Wise Up"
      composer "Aimee Mann"
      arranger "Arranged by George Mendoza"
      instrument "Guitar (capo on second fret)"
      midi_instrument "acoustic guitar (nylon)"
      tempo "4 = 75"
      transposition "d"
    end

* arranger - tab's arranger
* composer - song's composer
* instrument - description of the instrument used on the tab
* midi_instrument - the type of instrument played in the midi export of the tab. By default, "acoustic guitar (nylon)".
* tempo - see (lilypond)[http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Writing-parts#Metronome-marks] for the format.
* title - title of the song
* transposition - adjusts the pitch of the instrument. The default transposition is "c". If you set it to "d", then you have to play the tab two frets higher on the guitar (capo on second fret).


Notes with single quotes and backslashes
----------------------------------------

In Lilypond syntax, single quotes refer to octaves while backslashes refer to string numbers. So, the c note in the second string is written as

    c'\2

Since a Gitara file is a Ruby program, you have to be careful with backslashes when writing notes like the one above. As far as I know, Ruby provides two ways to preserve the backslash in the note above:

    notes %q|c'\2|

or

    notes "c'\\2"

Gitara provides a third option: it will automatically convert slashes to backslashes. This way, you can write the note above as

    notes "c'/2"

Prettier and easier to search and replace.


Workflow
--------

I'm no Lilypond expert (heh). When writing a tab, I use [TuxGuitar](http://tuxguitar.herac.com.ar) to transcribe a set of notes (usually just one bar). I then export the TuxGuitar tab to lilypond so that I can get the lilypond notes. I then place these lilypond notes inside my Gitara tab. This workflow allows me to use TuxGuitar's GUI for transcribing notes while allowing me to use Gitara's features for naming expressions and reusing them.


To do
-----

For version 1, I want to convert this lilypond file to Gitara format:

* [https://github.com/gsmendoza/tabs/tree/master/aimee-mann-wise-up](https://github.com/gsmendoza/tabs/tree/master/aimee-mann-wise-up)

The remaining features are:

1. Properties like the title and authors
2. Chord labels
