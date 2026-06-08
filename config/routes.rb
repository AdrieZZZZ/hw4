Rails.application.routes.draw do
  resources "places"
  resources "entries"
  resources "users"
  resources "sessions"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  get "/", to: "places#index"
end