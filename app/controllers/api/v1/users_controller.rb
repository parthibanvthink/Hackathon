class Api::V1::UsersController < Api::ApiController
    def login
        user = User.validate(params)
        render json: {"data": user}
        # token = ChatGpt.get_topics()
        # render json: {"data": token}
    end
end
