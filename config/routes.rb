Rails.application.routes.draw do
  resources :bands
  resources :gigs
  resources :users, only: [:index,:show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#index"


end
