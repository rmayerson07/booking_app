require 'sidekiq/web'
Rails.application.routes.draw do
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 # root "articles#index"
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  devise_for :users

  authenticated :user do
    root to: "home#dashboard", as: :authenticated_root
  end

  resources :booking_types
  resources :bookings, except: [:index, :new]

  get ":booking_link", to: "users#show", as: :user
  
  post "payment-intent", to: "bookings#intent"
  scope '/:booking_link', as: :user do
    resources :bookings, only: [:index, :new]
  end

  resources :webhooks, only: :create
  
  root to: "home#index"
end
