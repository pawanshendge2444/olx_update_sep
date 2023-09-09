Rails.application.routes.draw do
  root 'landings#home'
  devise_for :users
end
