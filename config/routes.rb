Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :carts, only: [:show]
  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :destroy]
  root 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
