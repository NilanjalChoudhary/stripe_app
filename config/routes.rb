Rails.application.routes.draw do
  
  root 'homes#index'
  devise_for :users 
  
  get 'homes/index'
  resources :products
  resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  
end
