Rails.application.routes.draw do
  
  resources :chatmessage_likes
  resources :chatrooms
  resources :conversations
  resources :users
  resources :workspaces
  resources :workspace_members
  resources :direct_messages
  resources :chatroom_messages
  resources :chatroom_members

  get '/login', to: 'users#token_authenticate'
  post '/login', to: 'auth#create'
  post 'signup', to: 'users#create'
  get '/profile', to: 'users#profile'


  mount ActionCable.server => '/cable'


end
