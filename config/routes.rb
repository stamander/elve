Rails.application.routes.draw do
  root to: 'top#index' 
  resources :top,only: :index
  resources :message,only: :index
  resources :shop, only: [:index, :new, :show] 
  resources :link, only: :index
end
