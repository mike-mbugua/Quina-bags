Rails.application.routes.draw do
  resources :clothings
  resources :users
  resources :bags
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
