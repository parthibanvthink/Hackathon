$secretKey = "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"

class ChatGpt
    attr_accessor :errors
  
    class << self
      def get_topics()

        # if opts[:chat].blank?
        #   Rails.logger.error "chat is missing"
        #   return failure_message("chat is missing")
        # elsif opts[:user_role].blank?
        #   Rails.logger.error "user_role is missing"
        #   return failure_message("user_role is missing")
        # end

        # request_body = {
        #   visitor_id: "this is a test visitor id",
        #   session_id: "this is a test session id",
        #   chat_id: "this is a test chat id",
        #   chat: opts[:chat],
        #   organization: "PathFactory",
        #   url: "blogs.cisco.com/networking/a-stellar-cisco-wan-edge-requires-stellar-cisco-dna-software",
        #   user_role: opts[:user_role]
        # }
        
        response = RestClient.get("https://reqres.in/api/products")


        if response.code != 200
          return failure_message(" V3 Error: #{response.body}")
        end

        parsed_response = JSON.parse(response.body)

        rescue JSON::ParserError => e
          Rails.logger.error e.backtrace
          Rails.logger.error e.message
          failure_message(e.message)
      end


      # add all function here

      def failure_message(message = "")
        {
          status: :failed,
          contents: nil,
          message: message
        }
      end

    end
end