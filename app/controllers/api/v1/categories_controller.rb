class Api::V1::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
    # render json: DreamSerializer.new(dreams)
  end
end
