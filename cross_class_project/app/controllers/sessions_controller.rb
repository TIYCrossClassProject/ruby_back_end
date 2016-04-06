class SessionsController < ApplicationController
  before_action :authenticate!

  def create
    @user = User.find_by!(email: params['email'])
    if @user.authenticate(params['password'])
      session[:user_id] = @user.id
      render json: { @user.as_json [:email]},
             status: :ok
    else
      render json: { message: "Invalid email or password." },
             status: :unauthorized
    end
  end
end
