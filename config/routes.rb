Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  get '/incidents', to: 'incidents#index'
  post '/incidents', to: 'incidents#create'

  get '/posts', to: 'posts#index'
  get '/posts/:id', to: 'posts#show'
  post '/posts', to: 'posts#create'

  get '/contacts', to: 'contacts#index'
  get '/contacts/:id', to: 'contacts#show'
  post '/contacts', to: 'contacts#create'
  
  resources :users, only: [:create, :show, :index]
  resources :incidents, only: [:create, :show, :index]
  resources :posts, only: [:create, :destroy]
  resources :contacts, only: [:create, :show, :index]
end
