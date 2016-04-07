class ImageController < ActionController::Base

  def new
    render :new
  end

  def create
    pic = Image.create(image_file_name: params["image_file_name"],
                      image_content_type: params["image_content_type"],
                      image_file_size: params["image_file_size"])
    redirect_to :root
  end

  def delete
    @image = Image.find(params["id"])
    @image.destroy
    redirect_to :root
  end
end
