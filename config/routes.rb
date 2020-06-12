Rails.application.routes.draw do
  root 'products#index'
  resources :top,only: :index
  resources :message,only: :index
  resources :shop
  resources :link, only: :index
  
  resources :products, except: :show
end
