Rails.application.routes.draw do
  resources :notes, only: [:new, :destroy, :create, :edit, :update]
  resources :cases
  resources :resources
  resources :social_workers
  resources :clients
  root 'sessions#welcome'
  get '/welcome', to: 'sessions#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  post '/cases/:id/close', to: 'cases#close'
  get '/dashboard', to: 'sessions#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end