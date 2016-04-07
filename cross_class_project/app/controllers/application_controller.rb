class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :logged_in_user

  def logged_in_user
      user_id = session['user_id']
    if user_id
      User.find_by(id: user_id)
    end
  end

  def authenticate!
    unless logged_in_user
      render json: { errors: "You need to be logged in to do that." },
             status: :unauthorized
    end
  end
end
