Rails.application.routes.draw do
  root 'challenge#index'
  resources :statistics
  resources :challenges
  resources :users
end
