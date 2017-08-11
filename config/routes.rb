Rails.application.routes.draw do

  devise_for :guardians
  devise_for :employees
  
  get 'home/index'
  root 'home#index'

  # students routes

 get '/students' => 'students#index'

 get '/students/new' => 'students#new'
 post '/students' => 'students#create'

 get '/students/:id' => 'students#show'

 get '/students/:id/edit' => 'students#edit'
 patch '/students/:id' => 'students#update'

 delete '/students/:id' => 'students#destroy'
 
  # employees routes

 get '/employees' => 'employees#index'

 get '/employees/new' => 'employees#new'
 post '/employees' => 'employees#create'

 get '/employees/:id' => 'employees#show'

 get '/employees/:id/edit' => 'employees#edit'
 patch '/employees/:id' => 'employees#update'

 delete '/employees/:id' => 'employees#destroy'


 # locations routes

 get '/locations' => 'locations#index'

 get '/locations/new' => 'locations#new'
 post '/locations' => 'locations#create'

 get '/locations/:id' => 'locations#show'

 get '/locations/:id/edit' => 'locations#edit'
 patch '/locations/:id' => 'locations#update'

 delete '/locations/:id' => 'locations#destroy'

 # guardians routes

 get '/guardians' => 'guardians#index'

 get '/guardians/new' => 'guardians#new'
 post '/guardians' => 'guardians#create'

 get '/guardians/:id' => 'guardians#show'

 get '/guardians/:id/edit' => 'guardians#edit'
 patch '/guardians/:id' => 'guardians#update'

 delete '/guardians/:id' => 'guardians#destroy'

 # code_classes routes

 get '/code_classes' => 'code_classes#index'

 get '/code_classes/new' => 'code_classes#new'
 post '/code_classes' => 'code_classes#create'

 get '/code_classes/:id' => 'code_classes#show'

 get '/code_classes/:id/edit' => 'code_classes#edit'
 patch '/code_classes/:id' => 'code_classes#update'

 delete '/code_classes/:id' => 'code_classes#destroy'

end
