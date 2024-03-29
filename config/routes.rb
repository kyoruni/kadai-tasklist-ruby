Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
#  get 'toppages/index'

  get 'signup', to: 'users#new'

  get 'login',     to: 'sessions#new'
  post 'login',    to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root to: 'tasks#index'
  # root to: 'toppages#index'

  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
end