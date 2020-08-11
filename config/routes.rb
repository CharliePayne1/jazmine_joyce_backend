Rails.application.routes.draw do

  resources :prints, only: [:index, :create, :update, :destroy]

  resources :orders, only: [:index, :create]

  post '/login', to: "auth#login"
  get '/validate', to: 'auth#validate'

end
