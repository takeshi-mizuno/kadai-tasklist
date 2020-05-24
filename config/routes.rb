Rails.application.routes.draw do
  get 'toppages/index'
#  get 'users/index'
#  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
#  resources :users, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create]

  resources :tasks, only: [:index, :show, :new, :create, :destroy,:edit,:update]
  
end
