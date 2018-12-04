Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items
  resources :payment_informations, only: [:index, :new, :create]
  resources :users, only: :index
  resources :categorys
end
