method = Fedex.new
calc = ShippingCalculator.new(method, OpenStruct.new(weight: 5))
puts calc.calculate
