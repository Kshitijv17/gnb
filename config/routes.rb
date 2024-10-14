Rails.application.routes.draw do
resources :users do
  resources :comments
  # resources :comments, only: [:create, :destroy]
end
root "users#index"


  # get "/user", to: "user#index"
  # get "/user/:id", to: "user#show"

  # get "/user/new", to: "user#new"
  # post "/user/new", to: "user#new"
  # get "/user/edit/:id", to: "user#edit"
  # # post "/user" to:"user#create"
end
