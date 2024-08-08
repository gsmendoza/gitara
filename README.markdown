Gitara is a Ruby DSL for generating Lilypond guitar tablatures


Usage
-----

To install,

    gem install gitara

You need [lilypond](http://lilypond.org) in order to generate pdfs and midis.

Gitara is tested on Ruby 3.3.3 and Lilypond 2.22. Patches are welcome.

To run,

    gitara export PATH [OPTIONS]...

This will generate a lilypond .ly file and then call lilypond to export the .ly file to pdf and midi. Please see `gitara help export` for the available options.


Basic syntax
------------

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

You can find examples at https://github.com/gsmendoza/gitara/tree/master/examples.


Bars
----

Bars are the smallest expressions in Gitara. That is, a gitara file must have at least one bar. The notes inside a bar follow [Lilypond syntax](http://lilypond.org/doc/v2.14/Documentation/notation/musical-notation).

    Gitara.define do
      bar do
        notes "c d e f g a b c"
      end
    end

With Gitara, it's easier to write notes using [absolute note names](http://lilypond.org/doc/v2.14/Documentation/notation/writing-pitches#absolute-octave-entry) instead of relative note names. This is because we'll be reusing bars and other Gitara expressions (see Reusing expressions below).


### Notes with single quotes and backslashes

In Lilypond syntax, single quotes refer to octaves while backslashes refer to string numbers. So, the c note in the second string is written as

    c'\2

Since a Gitara file is a Ruby program, you have to be careful with backslashes when writing notes like the one above. Ruby provides AFAIK two ways to preserve the backslash in the note above:

    notes %q|c'\2|

or

    notes "c'\\2"

Gitara provides a third option: it will automatically convert slashes to backslashes. This way, you can write the note above as

    notes "c'/2"

Prettier and easier to search and replace.


### Multiple voices

Each line of notes in a bar is a [voice](http://lilypond.org/doc/v2.14/Documentation/learning/voices-contain-music):

    Gitara.define do
      bar do
        notes "c d e f g a b c"
        notes "c' d' e' f' g' a' b' c'"
      end
    end

The tab above will play "c d e f g a b c" and "c' d' e' f' g' a' b' c'" simultaneously, not sequentially.


### Partial bars

To indicate that a bar is a [partial measure](http://lilypond.org/doc/v2.14/Documentation/notation/displaying-rhythms#upbeats), call `partial <duration>`:

    bar do
      partial 8
      notes "<g/3>8"
      notes "r8"
    end

As shown by the example, the durations of the notes within the bar must also have one-eighth durations in order for the tab to render properly.

Grouping bars together
----------------------

### Lines

You can group bars in a line:

    line :LineOne do
      bar :BayangMagiliw
      bar :PerlasNgSilanganan
      bar :AlabNgPuso
      bar :SaDibdibMoyBuhay
    end

Lines are [manually breaked](http://lilypond.org/doc/v2.14/Documentation/notation/line-breaking) in Gitara. You can disable a line break by setting `manual_break` to false:

    line :LineOne, :manual_break => false do
    end

### Stanzas

Lines can be grouped in stanzas. The names of a stanza will be displayed at the top of the stanza's first bar.


### Score

Finally, stanzas can be grouped in a score. Scores are important in grouping the tab in a single unit because...


### Only the last expression under Gitara.define will be generated

When writing a tab, oftentimes you want to generate only a part of the tab for testing purposes. Gitara makes this easy by processing only for the last expression under Gitara.define. For example, in the following tab, only the second bar (notes "g a b c") will be generated.

    Gitara.define do
      bar do
        notes "c d e f"
      end

      bar do
        notes "g a b c"
      end
    end

If you want Gitara to generate both bars, you must group them inside a score.

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

If you want to test a particular bar inside the score, you can copy it after the score:

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

Or, as you'll see below, you can give the bar a name so that you can call it later.


Reusing expressions
-------------------

Bars, lines, and other Gitara expressions can be reused. For example, if you want a repeat a bar, you can name the bar and call the name afterwards:

    Gitara.define do
      score do
        bar :Intro do
          notes "c d e f g a b c"
          notes "c' d' e' f' g' a' b' c'"
        end

        bar :Intro
      end
    end

This will generate a tab with two Intro bars. It's important to group the two bars above inside a score, because otherwise Gitara will only generate the second bar.

You can reuse a Gitara expression as long as it is defined before the call. The definition can even be deeper than the level of the call:

    Gitara.define do
      score do
        bar :testing do
          notes "c d e f"
        end

        bar do
          notes "g a b c"
        end
      end

      bar :testing
    end

In the example above, Gitara will only generate the last :testing bar.

Finally, you can call multiple expressions in a single line:

    bar :BayangMagiliw, :PerlasNgSilanganan, :AlabNgPuso, :SaDibdibMoyBuhay


### Repeats and alternative endings

You can also group expressions under [repeats](http://lilypond.org/doc/v2.14/Documentation/notation/long-repeats) and provide alternative endings:

    Gitara.define do
      line do
        repeat 4 do
          bar do
            notes "c4 d e f"
          end
        end

        alternative do
          bar do
            notes "d2 e"
          end

          bar do
            notes "f2 g"
          end
        end
      end
    end

Properties
----------

A gitara file can have the following properties:

    Gitara.define do
      title "Wise Up"
      composer "Aimee Mann"
      arranger "Arranged by George Mendoza"
      instrument "Guitar (capo on second fret)"
      key 'c \major'
      midi_instrument "acoustic guitar (nylon)"
      string_tunings "#guitar-tuning"
      tempo "4 = 75"
      time "4/4"
      transposition "d"
    end

* arranger - tab's arranger
* composer - song's composer
* instrument - description of the instrument used on the tab
* [key](http://lilypond.org/doc/v2.14/Documentation/notation/displaying-pitches#key-signature)
* midi_instrument - the type of instrument played in the midi export of the tab. By default, "acoustic guitar (nylon)".
* [string_tunings](http://lilypond.org/doc/v2.14/Documentation/notation/common-notation-for-fretted-strings#custom-tablatures)
* [tempo](http://lilypond.org/doc/v2.14/Documentation/notation/displaying-rhythms#metronome-marks)
* [time](http://lilypond.org/doc/v2.14/Documentation/notation/displaying-rhythms#time-signature) - default is 4/4
* title - title of the song
* transposition - adjusts the pitch of the instrument. The default transposition is "c". If you set it to "d", then you have to play the tab two frets higher on the guitar (capo on second fret).


Chord labels
------------

You can add chord labels to bars:

    Gitara.define do
      chords :FC,   'f2 c2'

      bar :BeganIt do
        notes "/skip 4 <a/3 c'/2 >8 <g/3>8 /skip 4 <g/3 c'/2 >8 <g/3>8"
        notes "<f/4>4 <f/4>4 <c/5>4 <e/4>4"
        chords :FC
      end
    end

`f2` and `c2` are [lilypond chord names](http://lilypond.org/doc/v2.14/Documentation/notation/displaying-chords).

If the bar is a partial measure, the duration of the chords within the bar must match the bar's duration:

    chords :G8, 'g8'

    bar do
      partial 8
      notes "<g/3>8"
      notes "r8"
      chords :G8
    end

Workflow
--------

I'm no Lilypond expert (heh). When writing a tab, I use [TuxGuitar](http://tuxguitar.herac.com.ar) to transcribe a set of notes (usually just one bar). I then export the TuxGuitar tab to lilypond so that I can get the lilypond notes. I then place these lilypond notes inside my Gitara tab. This workflow allows me to use TuxGuitar's GUI for transcribing notes while allowing me to use Gitara's features for naming expressions and reusing them.

