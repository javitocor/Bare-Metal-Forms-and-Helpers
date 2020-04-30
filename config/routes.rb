Rails.application.routes.draw do
  root 'users#index'
  post "/search", to: "users#searcher"
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :user_details
  resources :sessions, only: [:new, :create, :destroy]
end
