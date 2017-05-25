Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index]

  resources :brand_models, only: [:index]

  root to: 'bikes#index'

  mount Attachinary::Engine => "/attachinary"

end
