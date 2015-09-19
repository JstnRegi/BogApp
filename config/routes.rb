Rails.application.routes.draw do
  #serves up our index.html.erb
  get '/' => 'creatures#index', :as => 'creatures'
  get '/creatures' => 'creatures#index', :as => 'creatures'

  #routes for user to create a creature then view it
  get '/creatures/new' => 'creatures#new', :as 'new_creature'
  post '/creatures' => 'creatures#create'
  get '/creatures/:id' => 'creatures#show', :as 'creature'
  
  #route to edit a creature
  get '/creatures/:id/edit' => 'creatures#show', :as 'edit_creature'

end


