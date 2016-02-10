Rails.application.routes.draw do
  root 'homepage#index'

  resources :homepage, only: ['index']
  resources :sessions, only: ['create', 'destroy']
  resources :events
  resources :videos

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
end
