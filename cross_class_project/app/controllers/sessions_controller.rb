class SessionsController < ApplicationController
  # before_action :authenticate!

  def create
    @user = User.find_by!(email: params['email'])
    if @user.authenticate(params['password'])
      render json: { user: @user.as_json(only: [:email]) },
             status: :ok
      # render json: { user: @user.as_json }
    else
      render json: { message: "Invalid email or password." },
             status: :unauthorized
    end
  end
end
