Rails.application.routes.draw do

  devise_for :partners
  devise_for :volunteers
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

      #image route
  patch '/students/:id/image', to: 'student_image#update', as: :student_image


  # student class lists routes

  get '/student_class_lists' => 'student_class_lists#index'

  get '/student_class_lists/new' => 'student_class_lists#new'
  post '/student_class_lists' => 'student_class_lists#create'

  get '/student_class_lists/:id' => 'student_class_lists#show'

  get '/student_class_lists/:id/edit' => 'student_class_lists#edit'
  patch '/student_class_lists/:id' => 'student_class_lists#update'

  delete '/student_class_lists/:id' => 'student_class_lists#destroy'

  # employees routes

 get '/employees' => 'employees#index'

 get '/employees/new' => 'employees#new'
 post '/employees' => 'employees#create'

 get '/employees/:id' => 'employees#show'

 get '/employees/:id/edit' => 'employees#edit'
 patch '/employees/:id' => 'employees#update'

 delete '/employees/:id' => 'employees#destroy'


  #image route
  patch '/employees/:id/image', to: 'employee_image#update', as: :employee_image
        

# volunteers routes

get '/volunteers' => 'volunteers#index'

get '/volunteers/new' => 'volunteers#new'
post '/volunteers' => 'volunteers#create'

get 'volunteers/:id' => 'volunteers#show'

get 'volunteers/:id/edit' => 'volunteers#edit'
patch 'volunteers/:id' => 'volunteers#update'

delete 'volunteers/:id' => 'volunteers#destroy'


      #image route
  patch '/volunteers/:id/image', to: 'volunteer_image#update', as: :volunteer_image
        


 # locations routes

 get '/locations' => 'locations#index'

 get '/locations/new' => 'locations#new'
 post '/locations' => 'locations#create'

 get '/locations/:id' => 'locations#show'

 get '/locations/:id/edit' => 'locations#edit'
 patch '/locations/:id' => 'locations#update'

 delete '/locations/:id' => 'locations#destroy'


    #image route
  patch '/locations/:id/image', to: 'location_image#update', as: :location_image
        

 # guardians routes

 get '/guardians' => 'guardians#index'

 get '/guardians/new' => 'guardians#new'
 post '/guardians' => 'guardians#create'

 get '/guardians/:id' => 'guardians#show'

 get '/guardians/:id/edit' => 'guardians#edit'
 patch '/guardians/:id' => 'guardians#update'

 delete '/guardians/:id' => 'guardians#destroy'


      #image route
  patch '/guardians/:id/image', to: 'guardian_image#update', as: :guardian_image
        


 # camps routes

 get '/camps' => 'camps#index'

 get '/camps/new' => 'camps#new'
 post '/camps' => 'camps#create'

 get '/camps/:id' => 'camps#show'

 get '/camps/:id/edit' => 'camps#edit'
 patch '/camps/:id' => 'camps#update'

 delete '/camps/:id' => 'camps#destroy'

 # volunteers routes

get '/partners' => 'partners#index'

get '/partners/new' => 'partners#new'
post '/partners' => 'partners#create'

get 'partners/:id' => 'partners#show'

get 'partners/:id/edit' => 'partners#edit'
patch 'partners/:id' => 'partners#update'

delete 'partners/:id' => 'partners#destroy'


      #image route
  patch '/partners/:id/image', to: 'partner_image#update', as: :partner_image
        

end
