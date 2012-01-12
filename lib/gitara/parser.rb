module Gitara
  class Parser < Parslet::Parser
    rule :block do
       block_start_delimiter >> method_calls >> block_end_delimiter
    end

    rule :block_end_delimiter do
      str('end') >> space?
    end

    rule :block_start_delimiter do
      str('do') >> space?
    end

    rule(:identifier) do
      (str('bar') | str('tab') | str('voice')).as(:identifier) >> space?
    end

    rule :method_call do
      space? >> (identifier >> string.maybe >> block.maybe)
    end

    rule :method_calls do
      method_call.repeat.as(:method_calls)
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

    root(:method_call)
  end
end
