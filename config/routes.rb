Rails.application.routes.draw do
  resources :conta
  resources :items
  resources :pessoas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
