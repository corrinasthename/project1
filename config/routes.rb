Rails.application.routes.draw do
  get "dogs", to: "users#index"
  get "dogs/new", to: "users#new"
  get "dogs/:id", to: "users#show", as: :dog
  post "dogs", to: "users#create"
end
