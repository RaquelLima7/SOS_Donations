Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :institutions do
    resources :campaigns do
      resources :accontability, only: [:create, :new, :show] do
        resources :reviews, only: [:new, :create]
      end
    end
  end
  resources :donations, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
