Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations',sessions: 'sessions'}
  root 'items#index'
  resources :items
  resources :users, only: :index
  resources :categorys
  get "logout" => 'users#logout'
end
