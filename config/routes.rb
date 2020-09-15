Rails.application.routes.draw do
  resources :notes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, :requests, :enrollments, :messages, :stats
  mount ActionCable.server => '/cable'
end
