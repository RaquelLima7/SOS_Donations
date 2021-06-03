Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  
  resources :institutions do
    resources :campaigns, only: [:new, :create]
  end

  resources :campaigns, only: [:show, :index, :edit, :update, :destroy] do
    resources :donations, only: [:new, :create]
    resources :accontability, only: [:create, :new]
  end

  resources :accontability, only: [:show] do
    resources :reviews, only: [:new, :create]
  end

end
