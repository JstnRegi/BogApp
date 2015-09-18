Rails.application.routes.draw do
  get '/' => 'creatures#index'
  get '/creatures' => 'creatures#index'
  get '/creatures/new' => 'creatures#new'
end
