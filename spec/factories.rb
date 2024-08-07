FactoryBot.define do
  factory :note_set, :class => Node::NoteSet do
  end

  factory :alternative, :class => Node::Alternative do
  end

  factory :app, :class => App do
  end

  factory :bar, :class => Node::Bar do
    children { [FactoryBot.build(:note_set)] }
  end

  factory :base, :class => Node::Base do
  end

  factory :chord_set, :class => Node::ChordSet do
  end

  factory :chorded_bar, :class => Node::Bar::ChordedVersion do
  end

  factory :chorded_chord_set, :class => Node::ChordSet::ChordedVersion do
  end

  factory :dsl, :class => Dsl do
  end

  factory :line, :class => Node::Line do
    children { [FactoryBot.build(:bar)] }
  end

  factory :repeat, :class => Node::Repeat do
  end

  factory :stanza, :class => Node::Stanza do
    children { [FactoryBot.build(:line)] }
  end

  factory :stanza_version_bar, :class => Node::Bar::StanzaVersion do
  end

  factory :score, :class => Node::Score do
    children { [FactoryBot.build(:stanza)] }
  end

  factory :tab, :class => Node::Tab do
    children { [FactoryBot.build(:score)] }
  end

  factory :time_signature, :class => TimeSignature do
  end

  factory :voice, :class => Voice do
  end

  factory :voiced_bar, :class => Node::Bar::VoicedVersion do
  end

  factory :voiced_version, :class => Node::Base::VoicedVersion do
  end
end
