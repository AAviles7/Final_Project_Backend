Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :workspaces
  resources :workspace_members
  resources :direct_messages
  resources :channels
  resources :channel_messages
  resources :channel_members

  get '/login', to: 'users#token_authenticate'
  post '/login', to: 'auth#create'
  post 'signup', to: 'users#create'
  get '/profile', to: 'users#profile'   
end
