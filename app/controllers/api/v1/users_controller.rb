class Api::V1::UsersController < ApplicationController
  before_action
  def create
    @user = User.create(user_params)
    # byebug
    if @user.save
      render json: payload(@user)
    else
      render json: { errors: ['Invalid Username/Password'] }, status: 400
    end
    end

  private

  def payload(user)
    return nil unless user && user.id
    {
      auth_token: JsonWebToken.encode(user_id: user.id),
      user: { id: user.id, first_name: user.first_name, last_name: user.last_name }
    }
   end

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :lastname)
   end
end
