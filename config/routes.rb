Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users,controllers: {
 registrations: 'users/registrations'
}

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
   post 'users/sign_up/confirm' => 'users/registrations#confirm'
   post 'users/sign_up/complete' => 'users/registrations#complete'
  end
=======
  devise_for :users
  root 'items#index'
  resources :items
  resources :users, only: :index
>>>>>>> shohei0718/master
end
