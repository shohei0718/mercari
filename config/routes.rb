Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: :index
  resources :categorys
  get "logout" => 'users#logout'
  get "order-confirm" => 'items#order-confirm'
  get "edit-profile" => 'users#edit-profile'

end
