class UsersController < ApplicationController

  def create
    @user = User.new(alias: params['alias'],
                     first: params['first'],
                     last: params['last'],
                     email: params['email'],
                     password: params['password'])
    if @user.save
      render json: { user: @user.as_json(only: [:first_name, :last_name, :email]) },
                     status: :created
    else
      render json: { errors: @user.errors.full_messages },
                     status: :unprocessable_entity
    end
  end
end
