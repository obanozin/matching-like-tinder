Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  
  resources :users, only: %i(show index)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reactions, only: %i(create)
end
