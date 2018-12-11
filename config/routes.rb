Rails.application.routes.draw do

  root 'welcome#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :proposals

  ################ ADMIN ZONE #############

  namespace :admin do
  	resources :users
  	resources :possibles
    resources :proposals
  end

  end
