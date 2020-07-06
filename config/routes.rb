Rails.application.routes.draw do
  devise_for :users do
    root to: 'devise/registrations#new'
  end
  resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
