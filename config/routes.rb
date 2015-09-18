Rails.application.routes.draw do
  get 'creatures/index'

  get '/' => 'creatures#index'
  get '/creatures' => 'creatures#index'
end
