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

  namespace :api do
    resources :sessions, only: [:create, :destroy]
    # resources :messages, only: [:create]
    # resources :locations, only: [:create]
    resources :tasks, only: [:create, :index]  do
      # collection { post :upload_image }
      # get :already_exists
    end
    resources :register
  end


end
