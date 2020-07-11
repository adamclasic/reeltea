# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'tweets#index'
  devise_for :users

  resources :tweets
  resources :users, only: %i[show index]
  get 'follow/:id', to: 'users#followship'
  delete 'follow/:id', to: 'users#unfollowship'
  resources :tweets, only: %i[create destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
