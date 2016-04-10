class GuessesController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create
    @guess = logged_in_user.guesses.create(field: params['field'],
                                           image_id: params['id'])
  #   if @guess.image.answer == @guess.field
  #     render 'answer.json.jbuilder', status: :created
  #   elsif @guess.field
  #     render 'create.json.jbuilder', status: :created
  #   else
  #     render json: { errors: @guess.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end
    if @guess.field
      render 'answer.json.jbuilder', status: :created
    else
      render json: { errors: @guess.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
