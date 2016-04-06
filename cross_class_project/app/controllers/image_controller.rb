class ImageController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
    render :new
  end

  def create
    pic = Image.create(url: params["url"])
    redirect_to :root
  end

  def delete
    @image = Image.find(params["id"])
    @image.destroy
    redirect_to :root
  end
end
