Rails.application.routes.draw do

  resources :bikes, only: [:index, :show, :new, :create]

  devise_for :users
  root to: 'bikes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
