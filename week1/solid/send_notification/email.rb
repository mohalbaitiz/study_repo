module SendNotification
  class Email < Base
    private

    def send
      puts "Sending email to #{email}"
    end

    def email
      user.email
    end
  end
end
