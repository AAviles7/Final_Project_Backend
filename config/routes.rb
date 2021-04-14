Rails.application.routes.draw do
  
  resources :chatrooms
  resources :conversations
  resources :users
  resources :workspaces
  resources :workspace_members
  resources :direct_messages
  resources :threads
  resources :thread_messages
  resources :thread_members

  get '/login', to: 'users#token_authenticate'
  post '/login', to: 'auth#create'
  post 'signup', to: 'users#create'
  get '/profile', to: 'users#profile'


  mount ActionCable.server => '/cable'


end
