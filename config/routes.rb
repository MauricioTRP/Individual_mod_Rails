Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root 'users#index'
  get '/users/new', to: 'users#new', as: :create_user
  get '/users/:id', to: 'users#index', as: :user
  post '/users', to: 'users#contact'
end
