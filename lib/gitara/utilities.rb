module Gitara
  module Utilities
    class PathnameDoesNotExist < StandardError
    end

    def self.id_as_word(id)
      id.en.numwords.gsub('-', '_').camelize
    end

    def self.inspect_attributes(object, *attributes)
      "#{object.class}(" + attributes.collect{|a| "#{a}=#{object.send(a).inspect}"}.join(', ') + ")"
    end

    def self.read!(pathname)
      if pathname.exist?
        pathname.read
      else
        raise PathnameDoesNotExist, "#{pathname} does not exist"
      end
    end
  end
end

