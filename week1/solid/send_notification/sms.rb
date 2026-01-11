module SendNotification
  class Sms < Base
    private

    def send
      puts "Sending SMS to #{phone}"
    end

    def phone
      user.phone
    end
  end
end
