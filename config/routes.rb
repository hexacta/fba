Fba::Application.routes.draw do
  resources :horario_entregas

  resources :donantes

  root  'static_pages#home'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/donante', to: 'donantes#index',     via: 'get'
  match '/horarioEntregas', to: 'horario_entregas#index', via: 'get'
end