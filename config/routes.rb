Rails.application.routes.draw do
  root 'homepage#index'

  resources :homepage, only: ['index']
  resources :sessions, only: ['create', 'destroy']

  get 'login' => 'sessions#new'
end
