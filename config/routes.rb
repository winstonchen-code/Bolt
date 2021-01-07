Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :members
  resources :gyms 
  resources :run_classes
  resources :enrollments

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get "/home", to: "static#home"
  get "/membership", to: "static#membership"
  get "/virtual", to: "static#virtual"
  get "/training", to: "static#training"
  
end
