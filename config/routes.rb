Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: [:index, :show, :new] do
    resources :payment_informations, only: [:index, :new, :create, :destroy]
  end
  resources :categorys
  get "logout" => 'users#logout'
end
