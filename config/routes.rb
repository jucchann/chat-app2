Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
