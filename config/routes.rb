Rails.application.routes.draw do
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # root 'landings#home'
  root 'homes#index'
  devise_for :users
  resources :products
  get '/get_user_details', to: "homes#get_user_details"
  
end
