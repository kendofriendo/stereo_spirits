Rails.application.routes.draw do
  resources :band_memberships, only: %i[:index]
  resources :bands do
    resources :users, only: %i[:show, :index]
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#index"
  get 'profile', to: 'users#show'
  post '/bands', to: 'bands#create'
end




=begin

users/id/band
users/id/band/id
gig/id
gig/id/user/id

=end