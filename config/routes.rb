Rails.application.routes.draw do

# employees routes
get '/employees' => 'employees#index'
get '/employees/new' => 'employees#new'
post '/employees' => 'employees#create'
get '/employees/:id' => 'employees#show'
get '/employees/:id/edit' => 'employees#edit'
patch '/employees/:id' => 'employees#update'
delete '/employees/:id' => '/employees#destroy'

# location routes
get '/loctations' => 'locatons#index'
get '/locations/new' => 'locations#new'
post '/locations' => 'locations#create'
get '/locations/:id' => 'locations#show'
get '/locations/:id/edit' => 'locations#edit'
patch '/locations/:id' => 'locations#update'
delete '/locations/:id' => '/locations#destroy'

end
