class ImagesController < ActionController::Base
  def create
    @pic = Image.create(image: params["image"], answer: params["answer"])
  end

  def delete
    @image = Image.find(params["id"])
    @image.destroy
  end
end
