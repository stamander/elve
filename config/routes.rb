Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'top#index'
  
  resources :top,only: :index
  resources :message,only: :index
  resources :shop
  resources :link, only: :index
  resources :card
  
  resources :products

  resources :products do
    collection do
      get  'purchase/:id'=>  'products#purchase', as: 'purchase'
      post 'pay/:id'=>   'products#pay', as: 'pay'#httpメソッドはpostなので注意
      get  'done/:id'=>      'products#done', as: 'done'
    end
  end


  




end
