class KidsController < ApplicationController
  def index
    kids = Kids.all
    render json: kids
  end

  def show
    kid = Kid.find_by(id: params[:id])
    render json: kid
  end

  def create
    kid = Kid.new(
      name: params[:name],
      age: params[:age],
      note: params[:note],
      lunch: params[:lunch],
      drop_off_time: params[:drop_off_time],
      pick_up_time: params[:pick_up_time],
      days_attending: params[:days_attending],
      phone_number: params[:phone_number],
      parent_id: params[:parent_id],
    )
    if kid.save
      render json: { message: "kid has been created" }, status: :created
    else
      render json: { errors: kid.errors.full_messages }, status: :bad_request
    end
  end
end
