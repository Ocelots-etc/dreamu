class Api::V1::DreamsController < ApplicationController

  def index
    dreams = Dreams.all
    render json: dreams
  end

end
