Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :users, only: [:edit, :update]
  
  resources :institutions do
    resources :campaigns, only: [:new, :create]
  end

  resources :campaigns, only: [:show, :index, :edit, :update, :destroy] do
    resources :donations, only: [:new, :create]
    resources :accountabilities, only: [:create, :new, :show] do
      resources :reviews, only: [:new, :create]
    end
  end

end
