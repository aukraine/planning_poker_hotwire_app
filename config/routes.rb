Rails.application.routes.draw do
  root 'rooms#index'

  resources :rooms, only: [:show, :index, :new, :create, :destroy]
end
