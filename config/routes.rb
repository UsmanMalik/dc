Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "products#index"
  resources :product
#  Main static website
  namespace :data_collect do

  end
end
