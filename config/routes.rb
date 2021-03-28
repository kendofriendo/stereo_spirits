Rails.application.routes.draw do
  resources :band_memberships, only: %i[:index]
  resources :bands do
    resources :users, only: %i[:show, :index]
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#index"
  get '/users/:id', to: 'users#show', as: 'user'
  get '/profile', to: 'users#show', as: "#{current_user.username}"
end




=begin

users/id/band
users/id/band/id
gig/id
gig/id/user/id

=end