Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :products
  get '/get_user_details', to: "users#get_user_details"
  resources :users 
end
