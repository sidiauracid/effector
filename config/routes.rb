Rails.application.routes.draw do
  root to: "effectors#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :boards
  resources :effectors do
    resources :genres
  end
  resources :carts
end
