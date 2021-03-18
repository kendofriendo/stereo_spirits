Rails.application.routes.draw do
  resources :gigs
  devise_for :users
  root to: "home#index"
end
