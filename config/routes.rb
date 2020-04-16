Rails.application.routes.draw do
  root to: "effectors#index"
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :boards do
    resources :comments, only: :create
  end
  resources :effectors do
    resources :genres
  end
  resources :carts, only: [:show, :destroy]
  namespace :api do
    resources :carts, only: :create, defaults: { format: 'json'}
    # resources :confirm, only: :create, defaults: { format: 'json'}
  end

end