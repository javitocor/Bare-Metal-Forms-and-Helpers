Rails.application.routes.draw do
  root 'users#index'
  resources :users

  post "/search", to: "users#searcher"
end
