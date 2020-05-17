Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/businesses', to: 'businesses#index'

  get '/reviews/:id', to: 'businesses#reviews'

  post '/login', to: 'users#login'
  post '/createAccount', to: 'users#create_account'

end
