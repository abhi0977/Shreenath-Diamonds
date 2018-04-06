Rails.application.routes.draw do
  resources :products do
  collection do
    get '/buy/:id', to: 'products#buy', as: 'buy'
  end
end
  devise_for :users
  root 'posts#index'
  resources 'posts'
end
