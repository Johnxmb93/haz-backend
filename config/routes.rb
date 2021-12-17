Rails.application.routes.draw do
  get "/kids" => "kids#index"
  get "/kids/:id" => "kids#show"
  post "/kids" => "kids#create"
  patch "/kids/:id" => "kids#update"

  get "/parents" => "parents#index"
  get "/parents/:id" => "parents#show"
  post "/parents" => "parents#create"
  patch "/parents/:id" => "parents#update"

  post "/sessions" => "sessions#create"
end
