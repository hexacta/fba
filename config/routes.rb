Fba::Application.routes.draw do
  root  'static_pages#home'
  resources :users
  resources :sessions
  match '/signin',  to: 'sessions#new', via: 'get'
end
