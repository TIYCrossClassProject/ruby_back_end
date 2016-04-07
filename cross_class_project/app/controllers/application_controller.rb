class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def logged_in_user
    token = request.headers['Auth-Token']
    if token
      User.find_by(auth_token: token)
    end
  end

  def authenticate!
    unless logged_in_user
      render json: { errors: "You need to be logged in to do that." },
             status: :unauthorized
    end
  end
end
