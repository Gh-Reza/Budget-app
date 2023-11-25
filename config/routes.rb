Rails.application.routes.draw do
  # config/routes.rb
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root "splash#index"
  resources :categories do
    resources :purchases
  end
end
