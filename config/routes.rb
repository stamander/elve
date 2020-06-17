Rails.application.routes.draw do
  root 'top#index'
  
  resources :top,only: :index
  resources :message,only: :index
  resources :shop
  resources :link, only: :index
  
  resources :products

  resources :products do
    collection do
      get  'purchase/:id'=>  'products#purchase', as: 'purchase'
      post 'pay/:id'=>   'products#pay', as: 'pay'#httpメソッドはpostなので注意
      get  'done'=>      'products#done', as: 'done'
    end
  end




end
