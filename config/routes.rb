Rails.application.routes.draw do
  root 'top#index'
  
  resources :top,only: :index
  resources :message,only: :index
  resources :shop
  resources :link, only: :index
  
  resources :products

  resources :cards, only: [:index] do
    collection do
      post 'purchase', to: 'cards#purchase'
    end
  end

end
