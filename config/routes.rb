Rails.application.routes.draw do
  root to: "homes#top"
  get '/about' => 'homes#about'
  scope module: :public do
    resources :items, only: [:index,:show]
    resources :cart_items, only: [:index,:create,:update,:destroy]
    delete "cart_items/destroy_all" => "cart_items#destroy_all"
    get "customers/mypage" => "customers#show"
    get "customers/information/edit" => "customers#edit"
    patch "customers/information" => "customers#update"
    get "customers/unsubscribe" => "customers#unsubscribe"
    get "customers/withdraw" => "customers#withdraw"
    resources :orders, only: [:new,:index,:show]
    post "orders/confilm" => "orders#confilm"
    get "orders/thanks" => "orders#thanks"
    resources :addresses, only: [:index,:edit,:create,:update,:destroy]
  end
    
  namespace :admin do
    resources :items, only: [:new,:index,:show,:edit,:create,:update]
    resources :genres, only: [:index,:edit,:create,:update]
    resources :customers, only: [:index,:show,:edit,:update]
    resource :orders, only: [:show,:update] do
      resources :order_details, only: [:update]
    end
  end
  
  devise_for :admin, controllers: {
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