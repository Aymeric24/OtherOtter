Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'users#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :otters do
    resources :bookings, only: [ :create, :new ]
  end

  resources :bookings, only: [:edit, :update] do
    member do
      resources :reviews, only: [ :create, :new ]
    end
  end
end
