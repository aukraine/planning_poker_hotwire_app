Rails.application.routes.draw do
  root 'rooms#index'
  delete 'logout' => 'sessions#logout', as: :logout

  resources :rooms, only: [:show, :index, :new, :create, :destroy]

  resources :members, only: [:new, :create]
  resources :estimations, only: [:create]
end
