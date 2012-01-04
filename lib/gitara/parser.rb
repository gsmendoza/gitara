module Gitara
  class Parser < Parslet::Parser
    rule(:identifier) do
      match('\w').repeat(1).as(:identifier) >> space?
    end

    rule(:method_call) do
      (identifier.as(:method_id) >> string.as(:value))
    end

    rule :space do
      match('\s').repeat(1)
    end

    rule :space? do
      space.maybe
    end

    rule :string do
      str('"') >>
      ( (str('"').absent? >> any) ).repeat.as(:string) >>
      str('"') >>
      space?
    end

    rule :method_calls do
      space? >> method_call.repeat.as(:method_calls)
    end

    root(:method_calls)
  end
end