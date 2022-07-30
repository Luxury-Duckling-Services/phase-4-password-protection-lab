Rails.application.routes.draw do
  resources :users, only: [:create , :show]

  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"

end
