Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: [:show, :edit, :update] do
    resources :payment_informations, only: [:index, :new, :create, :destroy]
  end

  match 'secondcategory', to: 'items#secondcategory', via: [:get, :post]
  match 'thirdcategory', to: 'items#thirdcategory', via: [:get, :post]

  resources :categorys
  get "logout" => 'users#logout'
  get "order-confirm" => 'items#order-confirm'
  get "users/user_info/:id" => 'users#user_info', as: 'users_user_info'
  get "users/user_exhibitation_products/:id" => 'users#user_exhibitation_products', as: 'user_exhibitation_products'
  get "users/user_item_show/:id" => 'users#user_item_show', as: 'user_item_show'
end
