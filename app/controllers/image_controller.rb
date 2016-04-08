class ImageController < ActionController::Base
  before_action :authenticate!, only: [:create]

  def create
    @image = logged_in_user.images.create(avatar: params['file'])

    if @image.save
      render 'create.json.jbuilder', status: :created
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
