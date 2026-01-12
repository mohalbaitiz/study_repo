module Discount
  class Seasonal < Base
    private

    def calculate_total_discount
      total - amount
    end

    def amount
      20
    end
  end
end
