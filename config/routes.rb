Rails.application.routes.draw do
devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :bands do
    resources :users, shallow: true
  end
resources :users do
  resources :bands, shallow: true
end
  resources :band_memberships, only: [:show, :edit, :new]

  root to: "application#index"
  get 'profile', to: 'users#show'
  get 'bands/:id/join' => 'users#join_band'
  delete "leave", to: 'band_memberships#leave_band'
  patch '/band_memberships/:id', to: 'band_memberships#update'
end