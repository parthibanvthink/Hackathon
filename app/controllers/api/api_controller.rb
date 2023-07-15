class Api::ApiController < ApplicationController
    # before_action :require_jwt

    def require_jwt
        puts '----------'
        puts tokens
        if !tokens
            head :forbidden
        end
        
        if !valid_token(tokens)
          head :forbidden
        end
    end

    def tokens
        begin
          request.headers["Authorization"].gsub!('Bearer ','')
        rescue => exception
            Rails.logger.warn "Error decoding the JWT: "+ e.to_s
        end 
    end


    def decoded_token
        begin
            dectoken = JsonWebToken.decode(tokens)
        rescue => exception
            Rails.logger.warn "Error decoding the JWT: "+ e.to_s
        end    
    end


    private
    def valid_token(token)
      unless token
        return false
      end
  
      begin
        dectoken = JsonWebToken.decode(token)
        return dectoken["name"] == "parthi" ? true : false
      rescue JWT::DecodeError
        Rails.logger.warn "Error decoding the JWT: "+ e.to_s
      end
      false
    end
end
