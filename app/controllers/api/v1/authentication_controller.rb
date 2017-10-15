class Api::V1::AuthenticationController < ApplicationController
	def authenticate_user
    	user = User.find_for_database_authentication(email: params[:email])
    	if user.valid_password?(params[:password])
        # byebug
      	render json: payload(user)
    	else
      	render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
    	end
  	end

  	private

  	def payload(user)
    	return nil unless user and user.id
    	{
      	auth_token: JsonWebToken.encode({user_id: user.id}),
      	user: {id: user.id, first_name: user.first_name, last_name: user.last_name}
    	}
  	end

end
