Rails.application.routes.draw do
  get 'toppages/index'

  # root to: 'tasks#index'
  root to: 'toppages#index'
  resources :tasks
end