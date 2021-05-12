class Api::V1::DreamsController < ApplicationController

  def index
    dreams = Dream.all
    # render json: dreams
    render json: DreamSerializer.new(dreams)
  end

  def create
    dream = Dream.new(dream_params)
    if dream.save
      render json: DreamSerializer.new(dream), status: :accepted # setting status based on the successful save
    else
      render json: {errors: dream.errors.full_messages}, status: :unprocessible_entity # if not saved properly 422 status code - the server understands the content of the request and the syntax of the request entity is correct but was unable to process the contained instructions. - interpretation: everything looks find and seems fine - but you saved some validations or some parameters we set up so I'm going to give you and unprocessable entity
    end
  end

  private

  def dream_params
    params.require(:dream).permit(:dream_datetime, :journal, :image_url, :category_id)
  end

end