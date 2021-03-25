Rails.application.routes.draw do
  resources :bands, :gigs
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#index"
  get 'profile', to: 'users#show'
end




=begin

users/id/band
users/id/band/id
gig/id
gig/id/user/id

=end