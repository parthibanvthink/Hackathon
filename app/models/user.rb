class User < ApplicationRecord

    def self.validate(params = "")
        if params[:user_name].blank?
            return failure_message("user_name is missing")
        elsif params[:password].blank?
            return failure_message("password is missing")
        else
            user = User.find_by(username: params[:user_name])
            if user.blank?
                return failure_message("user not found")
            elsif user.rolenumber != params[:password]
                puts user.rolenumber
                return failure_message("password is incorrect")
            else
                return sucess_message("login successful")
            end
        end
    end

    def self.failure_message(msg = "")
        {
              status: ":failed",
              contents: nil,
              message: msg
        }
    end

    def self.sucess_message(msg = "")
        {
              status: ":successful",
              contents: nil,
              message: msg
        }
    end
end
