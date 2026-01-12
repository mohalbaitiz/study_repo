module Discount
  class Base
    attr_reader :total

    def initialize(total)
      @total = total
    end

    def apply
      calculate_total_discount
    end

    private

    def calculate_total_discount
      total * amount
    end

    def amount
      1
    end
  end
end
