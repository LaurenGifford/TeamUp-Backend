class TeammatesController < ApplicationController
    # skip_before_action :authenticate, only: [:create, :login, :google_login, :show]

    def show
        teammate = Teammate.find(params[:id])
        render json: teammate
    end

    def update
        tm = Teammate.find(params[:id])
        tm.update(tm_params)
        render json: tm
    end

    # def create
    #     user = Teammate.create(
    #       name: params[:name],
    #       password: params[:password],
    #     )
    
    #     if user.valid?
    #       token = encode_token({ teammate_id: user.id })
    
    #       render json: { user: TeammateSerializer.new(user), token: token }, status: :created
    #     else
    #       render json: { error: user.errors.full_messages }, status: :bad_request
    #     end
    # end
      
    
    # def login
    #     user = Teammate.find_by(name: params[:name])
    #     if user && user.authenticate(params[:password])
    #       token = encode_token({ teammate_id: user.id })
    #       render json: { user: TeammateSerializer.new(user), token: token }
    #     else
    #       render json: { error: "Invalid username or password" }, status: :unauthorized
    #     end
    # end
    
      # before_action :authenticate
    #   def autologin
    #     render json: @current_user
    #   end
    

    # def google_login
    #     payload = get_google_token_payload
    #     if payload
    #       # find/create user from payload (this will be a new method in the User model)
    #       user = Teammate.from_google_signin(payload)
    #       if user
    #         # save user_id in token so we can use it in future requests
    #         token = encode_token({ teammate_id: user.id })
    #         # send token and user in response
    #         render json: { user: TeammateSerializer.new(user), token: token }
    #         return
    #       end
    #     end
    #         # for invalid requests, send error messages to the front end
    #     render json: { message: "Could not log in" }, status: :unauthorized
    # end

    private

    def tm_params
        params.require(:teammate).permit(:name, :points, :password, :team_id)
    end

    # def get_google_token_payload
    #     if request.headers["Authorization"]
    #       # extract the token from the Authorization header
    #       token_id = request.headers["Authorization"].split(" ")[1]
    
    #       # this is the code from the Google auth gem
    #       validator = GoogleIDToken::Validator.new
    #       begin
    
    #         # check the token_id and return the payload
    #         # make sure your .env file has a matching key
    #         validator.check(token_id, ENV["GOOGLE_OAUTH_CLIENT_ID"])
    #       rescue GoogleIDToken::ValidationError => e
    #         p "Cannot validate: #{e}"
    #       end
    #     end
    # end
end
