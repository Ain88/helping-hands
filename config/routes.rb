Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  resources :users
end
