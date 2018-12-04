Rails.application.routes.draw do

  devise_for :users,controllers: {registrations: 'users/registrations'}
  root 'items#index'
  resources :items
  resources :users, only: :index
  resources :categorys

  devise_scope :user do
   post 'users/sign_up/confirm' => 'users/registrations#confirm'
   post 'users/sign_up/complete' => 'users/registrations#complete'
  end
end
