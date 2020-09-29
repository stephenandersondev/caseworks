Rails.application.routes.draw do
  resources :notes
  resources :cases
  resources :resources
  resources :social_workers
  resources :clients
  root 'application#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
