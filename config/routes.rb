Rails.application.routes.draw do
  root to: 'home#index'
  resources :user_organizations
  devise_for :users
  get 'home/assigning', to: 'home#assigning'
  resources :drivers
  resources :routes
  resources :vehicles
  resources :organizations do
    resources :routes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
