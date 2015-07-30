Rails.application.routes.draw do

  root 'welcome#home'
  resources :welcome, only: [:about, :home]
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
  patch '/users', to: 'users#update', as: :update
  get '/about', to: 'welcome#about'
  get '/users/profile', to: 'users#show'
  get '/sessions/new',  to: 'sessions#new'
  get '/users/add_course/:id', to: 'users#add_course'
  delete '/session', to: 'sessions#destroy'
  delete '/vocabularies', to: 'vocabularies#destroy'


end
