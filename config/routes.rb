Fba::Application.routes.draw do
  root  'static_pages#home'
  resources :users
end
