Rails.application.routes.draw do
  root to: 'tweets#index'
  devise_for :users

  resources :tweets
  resources :users, only: [:show, :index]
  get 'follow/:id', to: 'users#followship'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
