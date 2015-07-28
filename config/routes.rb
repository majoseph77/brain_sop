Rails.application.routes.draw do

  root 'welcome#home'

  resources :users, only: [:new, :create, :edit]
  resource :session, only: [:new, :create, :destroy]

  get '/users/profile', to: 'users#show'



end
