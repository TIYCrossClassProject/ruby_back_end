class ImageController < ActionController::Base

  def new
    render :new
  end

  def create
    pic = Image.create(url: params["url"]
                      answer: params["answer"])
    redirect_to :root
  end

  def delete
    @image = Image.find(params["id"])
    @image.destroy
    redirect_to :root
  end
end
