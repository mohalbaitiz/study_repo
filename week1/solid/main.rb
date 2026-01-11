require_relative './order_service'
require_relative './discount/base'
require_relative './discount/coupon'
require_relative './discount/seasonal'
require_relative './discount/vip'
require_relative './send_notification/base'
require_relative './send_notification/email'
require_relative './send_notification/sms'

OrderService.checkout(order, user, discount_type)
