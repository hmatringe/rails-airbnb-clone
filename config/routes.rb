Rails.application.routes.draw do

  devise_for :users

  resources :bikes, only: [:index, :show, :new, :create]

  root to: 'bikes#index'

  mount Attachinary::Engine => "/attachinary"

end
