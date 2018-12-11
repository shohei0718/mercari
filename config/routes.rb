Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: [:show, :edit, :update] do
    resources :orders, only: [:show, :create] do
      collection do
        post 'pay'
      end
    end
    resources :payment_informations, only: [:index, :new, :create, :destroy]
  end

  match 'secondcategory', to: 'items#secondcategory', via: [:get, :post]
  match 'thirdcategory', to: 'items#thirdcategory', via: [:get, :post]

  resources :categorys
  get "logout" => 'users#logout'
  get "users/user_info/:id" => 'users#user_info', as: 'users_user_info'
end
