Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :products
  get '/get_user_details', to: "users#get_user_details"
  resources :users 
  resources :landings
  resources :carts do
      post 'add_to_cart/:product_id', to: 'carts#add_to_cart', as: 'add_to_cart'
  end
  resources :cart_items
end
