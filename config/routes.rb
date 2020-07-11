# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'tweets#index'
  devise_for :users

  resources :tweets
  resources :users, only: %i[show index]
  resources :followings, only: %i[create destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
