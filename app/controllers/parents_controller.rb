class ParentsController < ApplicationController
  def index
    parents = Parent.all
    render json: parents
  end

  def show
    parent = Parent.find_by(id: params[:id])
    render json: parent
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

  def update
    parent = Parent.find_by(id: params[:id])
    parent.email = params[:email] || parent.email
    parent.phone_number = params[:phone_number] || parent.phone_number
    parent.kids_enrolled = params[:kids_enrolled] || parent.kids_enrolled
    parent.name = params[:name] || parent.name
    if parent.save
      render json: parent
    else
      render json: { errors: parent.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
