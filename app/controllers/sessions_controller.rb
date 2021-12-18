class SessionsController < ApplicationController
  def create
    parent = Parent.find_by(email: params[:email])
    if parent && parent.authenticate(params[:password])
      jwt = JWT.encode(
        {
          parent_id: parent.id,
          exp: 72.hours.from_now.to_i,
        },
        Rails.application.credentials.fetch(:secret_key_base),
        "HS256"
      )
      render json: { jwt: jwt, email: parent.email, parent_id: parent.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
