Rails.application.routes.draw do
  resources :bands
  resources :gigs
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  root to: "application#index"
end
