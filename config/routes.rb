Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  get '/incidents', to: 'incidents#index'
  post '/incidents', to: 'incidents#create'
  
  resources :users, only: [:create, :show, :index]
  resources :incidents, only: [:create, :show, :index]
  # resources :posts, only: [:create, :destroy]
end
