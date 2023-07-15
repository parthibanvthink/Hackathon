class User < ApplicationRecord

    def self.validate(params = "")
        if params[:user_name].blank?
            return failure_message("user_name is missing")
        elsif params[:password].blank?
            return failure_message("password is missing")
        else
            user = User.where(username: params[:user_name]).first
            if user.blank?
                return failure_message("user not found")
            elsif user.rollnumber != params[:password]
                puts user.rollnumber
                return failure_message("password is incorrect")
            else
                return user
            end
        end
    end

    def self.failure_message(msg = "")
        {
              status: "failed",
              contents: nil,
              message: msg
        }
    end

    def self.sucess_message(msg = "")
        {
              status: "successful",
              contents: nil,
              message: msg
        }
    end
end
