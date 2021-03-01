Rails.application.routes.draw do
  get 'admin/index'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  resources :users
  root 'admin#index'
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'post/create'
  post 'post/create'
  post 'post/store'
  get 'home/index'
  get 'admin/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
