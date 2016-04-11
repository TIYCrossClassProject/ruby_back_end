class ImagesController < ApplicationController
  before_action :authenticate!, only: [:create]

  def index
    @image = Image.all
    render 'index.json.jbuilder', status: :ok
  end

  def create
    @image = logged_in_user.images.create(logo: params['file'],
                                          answer: params['answer'])

    if @image.save
      render 'create.json.jbuilder', status: :created
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find(params['id'])
    @image.destroy
  end
end
