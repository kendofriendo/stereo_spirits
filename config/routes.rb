Rails.application.routes.draw do
  resources :bands do
    resources :users, only: %i[:show, :index]
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
    resources :band_memberships, only: %i[:index]
  end
  root to: "application#index"
  get 'profile', to: 'users#show'
end




=begin

users/id/band
users/id/band/id
gig/id
gig/id/user/id

=end