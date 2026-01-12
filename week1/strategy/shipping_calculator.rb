class ShippingCalculator
  attr_reader :method, :order

  def initialize(method, order)
    @method = method
    @order = order
  end

  def calculate
    method.calculate(order)
  end
end
