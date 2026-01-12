module Strategies
  class Base
    def calculate
      raise NotImplementedError
    end
  end
end
