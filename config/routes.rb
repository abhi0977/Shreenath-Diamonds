Rails.application.routes.draw do
  get 'cart', to: 'cart#index', as: 'cart'
  get 'admindashboard', to: 'admin#index'
  resources :products do
  collection do
    get '/buy/:id', to: 'products#buy', as: 'buy'
  end
end
  devise_for :users
  root 'products#index'
  resources 'posts'
  resources :charges
end
