Rails.application.routes.draw do
  #serves up our index.html.erb
  get '/', to: 'creatures#index'

  get '/creatures', to: 'creatures#index', as: 'creatures'

  #routes for user to create a creature then view it
  get '/creatures/new', to: 'creatures#new', as: 'new_creature'
  post '/creatures', to: 'creatures#create'
  get '/creatures/:id', to: 'creatures#show', as: 'creature'
  
  #route to edit a creature and view it
  patch '/creatures/:id', to: 'creatures#update'
  get '/creatures/:id/edit', to: 'creatures#edit', as: 'edit_creature'

  #destroy route
  delete 'creatures/:id', to: "creatures#destroy"

end


