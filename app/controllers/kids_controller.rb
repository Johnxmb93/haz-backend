class KidsController < ApplicationController
  def index
    kids = Kids.all
    render json: posts
  end

  def create
    kid = Kid.new(
      name: params[:name],
      age: params[:age],
      parent_id: params[:parent_id],
      lunch: params[:lunch],
      note: params[:note],
    )
    if kid.save
      render json: kid
    else
      render json: { errors: kid.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
