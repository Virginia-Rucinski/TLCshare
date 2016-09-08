Rails.application.routes.draw do
  get 'resources/index'

  # get 'messages/new'
  resources :messages, only: [:new, :create]

  get 'password_resets/new'

  get 'password_resets/edit'

  resources :medications
  resources :addresses
  resources :todos
  get 'calendar/index'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]

  # route for data loading
  match "calendar/data", :to => "calendar#data", :as => "data", :via => "get"
  # route for data handling
  match "calendar/db_action", :to => "calendar#db_action", :as => "db_action", :via => "get"

end
