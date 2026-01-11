class OrderService
  attr_reader :order, :user, :discount_type

  def initialize(order, user, discount_type)
    @order = order
    @user = user
    @discount_type = discount_type
  end

  def checkout
    calculated_total = calculate_total
    calculated_total = apply_discount(calculated_total) if discount_type

    SendNotification::Email.new(user).call if user.email
    SendNotification::Sms.new(user).call if user.phone

    puts "Saving order with total #{calculated_total}"
    calculated_total
  end

  def calculate_total
    total = 0

    order.items.each do |item|
      total += item.price * item.quantity
    end

    total
  end

  def apply_discount(total)
    discount_class_name = "Discount::#{discount_type.to_s.capitalize}"
    Object.const_get(discount_class_name).new(total).apply
  end
end
