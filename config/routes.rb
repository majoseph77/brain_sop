Rails.application.routes.draw do

  get 'courses/index'

  root 'welcome#home'

  resources :users, only: [:new, :create, :edit, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :courses

  get '/users/profile', to: 'users#show'
  get '/sessions/new',  to: 'sessions#new'
  delete '/session', to: 'sessions#destroy'


end
