Fba::Application.routes.draw do
  root  'static_pages#home'
  resources :users
  resources :roles
  resources :horario_entregas
  resources :donantes
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/donantes', to: 'donantes#index',     via: 'get'
  match '/horario_Entregas', to: 'horario_entregas#index', via: 'get'
end