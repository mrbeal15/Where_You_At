Rails.application.routes.draw do

  resources :users
  resources :groups

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/users/:id/coordinates' => 'users#coordinates'
  post '/groups/:id/invite' => 'groupings#create'
  get '/groups/:id/invite' => 'group#invite'
  get '/groups/:id/map' => 'groups#show_map'

end
