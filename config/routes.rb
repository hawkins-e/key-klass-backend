Rails.application.routes.draw do
  root 'challenges#index'
  resources :statistics
  resources :challenges
  resources :users
end
