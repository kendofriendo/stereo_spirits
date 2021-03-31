Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
    resources :band_memberships, only: %i[:index]
  end
  resources :bands do
    resources :users, shallow: true
  end
  resources :users do
    resources :bands, shallow: true
  end

  root to: "application#index"
  get 'profile', to: 'users#show'
end