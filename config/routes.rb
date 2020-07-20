Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  # post "/users", to: 'users#create'
  # get "/users", to: "users#index"
  resources :users
end
