Rails.application.routes.draw do

  namespace :admin do
    get "/"=>"homes#top"
    resources :items, only: [:new,:index,:show,:edit,:create,:update]
    resources :genres, only: [:index,:edit,:create,:update]
    resources :customers, only: [:index,:show,:edit,:update]
    resources :orders, only: [:show,:update] do
      resources :order_details, only: [:update]
    end
  end
  
  namespace :customer do
    
  end
  
  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    sessions: "admins/sessions",
    passwords: "admins/passwords",
    confirmations: "admins/confirmations"
  }
  devise_for :customers, controllers: {
    registrations: "customers/registrations",
    sessions: "customers/sessions",
    passwords: "customers/passwords",
    confirmations: "customers/confirmations"
  }
end