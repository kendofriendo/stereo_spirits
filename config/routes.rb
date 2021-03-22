Rails.application.routes.draw do
  resources :bands
  resources :gigs
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#index"

end
