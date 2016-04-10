class UsersController < ApplicationController

  def create
    @user = User.new(alias: params['alias'],
                     avatar: params['avatar'],
                     first: params['first'],
                     last: params['last'],
                     email: params['email'],
                     password: params['password'])
    @user.ensure_auth_token
    if @user.save
      render json: { user: @user.as_json(only: [:alias, :first, :last, :email, :auth_token]) },
                     status: :created
    else
      render json: { errors: @user.errors.full_messages },
                     status: :unprocessable_entity
    end
  end
end
