module Strategies
  class Aramex < Base
    def calculate(order)
      order.weight * 8 + 10
    end
  end
end
