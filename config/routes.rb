Fba::Application.routes.draw do
  root  'static_pages#home'
  resources :users
  resources :roles
  resources :horario_entregas
  resources :donantes
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end