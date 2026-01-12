module SendNotification
  class Base
    attr_reader :user

    def initialize(user)
      @user = user
    end

    def call
      send
    end

    private

    def send
      raise NotImplementedError
    end
  end
end
