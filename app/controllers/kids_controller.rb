class KidsController < ApplicationController
  def index
    kids = Kids.all
    render json: posts
  end
end
