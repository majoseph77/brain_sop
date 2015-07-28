Rails.application.routes.draw do

  get 'courses/index'

  root 'welcome#home'

  resources :users, only: [:new, :create, :edit]
  resource :session, only: [:new, :create, :destroy]
  resources :courses

  get '/users/profile', to: 'users#show'



end
