Rails.application.routes.draw do
  resources :bands
  resources :gigs
  devise_for :users
  root to: "application#index"
end
