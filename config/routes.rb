Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

  resources :items do
    collection do
      post 'pay'
    end
  end

  resources :users, only: [:show, :edit, :update] do
    resources :payment_informations, only: [:index, :new, :create, :destroy]
  end

  resources :orders, only: [:show, :create]

  match 'secondcategory', to: 'items#secondcategory', via: [:get, :post]
  match 'thirdcategory', to: 'items#thirdcategory', via: [:get, :post]

  resources :categorys
  get "logout" => 'users#logout'
  get "order-confirm" => 'items#order-confirm'
  get "users/user_info/:id" => 'users#user_info', as: 'users_user_info'
end
