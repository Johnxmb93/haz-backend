class ParentsController < ApplicationController
  def index
    parents = Parents.all
    render json: parents
  end

  def create
    parent = Parent.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      kids_enrolled: params[:kids_enrolled],
      payment_status: "false",
      phone_number: params[:phone_number],
    )
    if parent.save
      render json: { message: "parent has been created" }, status: :created
    else
      render json: { errors: parent.errors.full_messages }, status: :bad_request
    end
  end
end
