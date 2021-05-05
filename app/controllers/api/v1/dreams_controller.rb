class Api::V1::DreamsController < ApplicationController

  def index
    dreams = Dream.all
    render json: dreams
  end
 
  def create
    dream = Dream.new(dream_params)
    if dream.save
      render json: dream, status: :accepted
    else
      render json: {errors: dream.errors.full_messages}, status: :unprocessible_entity
    end
  end


  private

  def dream_params
    params.require(:dream).permit(:dream_datetime, :journal, :image_url, :category_id)
  end

end
