Rails.application.routes.draw do
  root 'users#index'
  post "/search", to: "users#searcher"
  get '/signup', to: 'users#new'
  resources :users
end
