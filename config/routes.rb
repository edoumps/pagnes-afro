Rails.application.routes.draw do
  resources :order_items
  resources :carts
  # root "products#index"
  root 'store#index', as: 'store_index'
  get 'store/index'
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
