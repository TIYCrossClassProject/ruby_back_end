class ImageController < ActionController::Base

  def new
    render :new
  end

  def create
<<<<<<< HEAD:cross_class_project/app/controllers/image_controller.rb
    @pic = Image.new(image_file_name: params["image_file_name"],
                      image_content_type: params["image_content_type"],
                      image_file_size: params["image_file_size"])
    if @pic.save
      render json: { image: @pic.as_json(only: [:image_file_name,
        :image_content_type, :image_file_size])}
                    status: :created
    else
      render json: { errors: @pic.errors.full_messages },
                    status: :unprocessable_entity
=======
    @pic = Image.create(image_file_name: params["image_file_name"],
                      image_content_type: params["image_content_type"],
                      image_file_size: params["image_file_size"],
                      answer: params["answer"])
>>>>>>> master:app/controllers/image_controller.rb
    redirect_to :root
  end

  def delete
    @image = Image.find(params["id"])
    @image.destroy
    redirect_to :root
  end
end
