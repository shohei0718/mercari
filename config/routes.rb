Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :users
  resources :items
  match 'secondcategory', to: 'items#secondcategory', via: [:get, :post]
  match 'thirdcategory', to: 'items#thirdcategory', via: [:get, :post]
  resources :categorys
  get "logout" => 'users#logout'
  get "order-confirm" => 'items#order-confirm'
  get "users/edit_profile/:id" => 'users#edit_profile', as: 'users_edit_profile'
  get "users/user_info/:id" => 'users#user_info', as: 'users_user_info'
  # patch "users/edit_profile/:id" => 'users#update'
  # patch "users/user_info/:id" => 'users#update'
end
