Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: :create
  get 'sign_up' => 'users#new'

  resources :sessions, only: :create
  delete 'logout' => 'sessions#destroy'
  get 'login'     => 'sessions#new'
end
