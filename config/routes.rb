Rails.application.routes.draw do

  devise_for :users

  resources :bikes, only: [:index, :show, :new, :create]

  resources :brand_models, only: [:index]

  root to: 'bikes#index'

  mount Attachinary::Engine => "/attachinary"

end
