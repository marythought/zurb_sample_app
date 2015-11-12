Rails.application.routes.draw do
  root 'products#index'
  resources :tests
  resources :products
end
