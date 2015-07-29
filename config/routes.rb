Rails.application.routes.draw do

  root 'welcome#home'

  resources :users do
    resources :courses
  end

  resource :session, only: [:new, :create, :destroy]

  resources :courses do
    resources :sections
  end

  resources :vocabularies do
    resources :users
  end

  get '/users/profile', to: 'users#show'
  get '/sessions/new',  to: 'sessions#new'
  delete '/session', to: 'sessions#destroy'
  delete '/vocabularies', to: 'vocabularies#destroy'

end
