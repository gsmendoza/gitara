module Pow
  class Base
    def read!
      if exists?
        read
      else
        raise PowError, "#{self} does not exist"
      end
    end
  end
end
