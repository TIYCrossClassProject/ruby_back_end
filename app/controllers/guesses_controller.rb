class GuessesController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create
    @guess = logged_in_user.guesses.new(field: params['field'],
                                        image_id: params['id'])
    @image = Image.find_by(id: params['id'])

    if @guess.save
      if @guess.image.answer == @guess.field
        @image.update(solution: @guess.id)
        render 'answer.json.jbuilder', status: :created
      elsif @guess.field
        render 'create.json.jbuilder', status: :created
      else
       render json: { errors: @guess.errors.full_messages }, status: :unprocessable_entity
     end
   end
  end
end
