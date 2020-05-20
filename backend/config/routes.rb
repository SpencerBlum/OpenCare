Rails.application.routes.draw do
  get 'traits/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/businesses', to: 'businesses#index'
  get '/reviews/:id', to: 'businesses#reviews'
  get "/traits", to: "traits#index"
  post '/login', to: 'users#login'

  patch '/resetpassword', to: 'users#resetpassword'


  post '/createAccount', to: 'users#create_account'
  post "/review/new" , to: 'businesses#create_review'


end
