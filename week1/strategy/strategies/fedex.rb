module Strategies
  class Fedex < Base
    def calculate(order)
      order.weight * 10 + 15
    end
  end
end
