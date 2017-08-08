Rails.application.routes.draw do
 get '/students' => 'students#index'

 get '/students/new' => 'students#new'
 post '/students' => 'students#create'

 get '/students/:id' => 'students#show'

 get '/student/:id/edit' => 'students#edit'
 patch '/students/:id' => 'students#update'

 delete '/students/:id' => 'students#destroy'
 
end
