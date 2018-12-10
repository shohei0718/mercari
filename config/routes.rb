Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: :show do
    resources :payment_informations, only: [:index, :new, :create, :destroy]
  end

  match 'secondcategory', to: 'items#secondcategory', via: [:get, :post]
  match 'thirdcategory', to: 'items#thirdcategory', via: [:get, :post]

  resources :categorys
  get "logout" => 'users#logout'
  get "order-confirm" => 'items#order-confirm'
  get "edit-profile" => 'users#edit-profile'
end
