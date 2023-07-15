class PostsController < ApplicationController
    def index
        http_auth_header = {"name": "parthi"}
        token = JsonWebToken.encode(http_auth_header)
        dectoken = JsonWebToken.decode(token)
        render json: {"data": dectoken}
    end
end
