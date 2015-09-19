Rails.application.routes.draw do
  get '/' => 'creatures#index'
  get '/creatures' => 'creatures#index'
  get '/creatures/new' => 'creatures#new'
  post '/creatures' => 'creatures#create'

  #rake routes to check these routes
  get '/creatures/:id' => 'creatures#show'
  get '/creatures' => 'creatures#create'
end


