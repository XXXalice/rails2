Rails.application.routes.draw do
  resources :mircoposts
  resources :users
  root 'users#index'
end
