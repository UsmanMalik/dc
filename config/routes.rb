Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "products#index"
  resources :products

  namespace :super do
    resources :dashboard, only: [:index]   
  end

  namespace :client do
    resources :dashboard, only: [:index]
  end

  namespace :app_user do
  end

end
