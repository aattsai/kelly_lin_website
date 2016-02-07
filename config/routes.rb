Rails.application.routes.draw do
  root 'homepage#index'

  resources :homepage, only: ['index']
  resources :sessions, only: ['create', 'destroy']
  resources :events

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
end
