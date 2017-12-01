Rails.application.routes.draw do

  root to: 'pages#home'

    resources :search, only: [:index]

  devise_for :users

  resources :babies, only: [:index, :show] do
    resources :bookings, only: [:new, :create ] # as renter
  end

  namespace :account do
    resources :babies # as owner

    resources :requests, only: [:index] do # as owner
      member do
        patch :accept
        patch :decline
      end
    end

    resources :bookings, only: [:index, :destroy] # as renter
  end

  resource :profile, only: [:show, :edit, :update]
end
