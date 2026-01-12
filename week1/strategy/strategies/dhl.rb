module Strategies
  class Dhl < Base
    def calculate(order)
      order.weight * 12 + 20
    end
  end
end
