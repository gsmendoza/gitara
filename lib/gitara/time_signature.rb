module Gitara
  class TimeSignature < Valuable
    has_value :value

    def beats_per_bar
      value.split('/')[0].to_i
    end

    def beat_unit
      value.split('/')[1].to_i
    end

    def generates_whole_note_bars?
      beat_unit == beats_per_bar
    end

    def rest_bar_value
      generates_whole_note_bars? ? "r1" : ("r#{beat_unit} " * beats_per_bar).strip
    end
  end
end
