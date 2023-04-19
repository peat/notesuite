Rails.application.routes.draw do
  resources :currencies
  resources :notes
  resources :masters
  resources :authorities
  resources :regions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
