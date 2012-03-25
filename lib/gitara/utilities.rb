module Gitara
  module Utilities
    def self.id_as_word(id)
      id.en.numwords.gsub('-', '_').camelize
    end

    def self.inspect_attributes(object, *attributes)
      "#{object.class}(" + attributes.collect{|a| "#{a}=#{object.send(a).inspect}"}.join(', ') + ")"
    end

    def self.read!(pow)
      if pow.exists?
        pow.read
      else
        raise PowError, "#{pow} does not exist"
      end
    end
  end
end

