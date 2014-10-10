Rails.application.routes.draw do

  get 'notes/create_note'

  post 'notes/add_note'

  get 'notes/delete_note'

  get 'notes/show_note'

  get '/quizzes/create_quiz'
  post '/quizzes/add_quiz'
  get '/quizzes/edit_quiz'
 post '/quizzes/update_quiz'
get '/quizzes/quiz_test'
 post '/quizzes/quiz_answer'
  get '/passwords/forgot_password'
get '/quizzes/quiz_data'
 post '/quizzes/quiz_data_insert' 
  match '/signup',  to: 'schools#school_signup',   as: :signup ,  via: 'get'
 #get 'schools/school_signup'
 post '/schools/reg'
 get '/schools/reg'
 get '/schools/homepage'
get '/schools/school_signin'
post '/schools/school_login'
get '/schools/school_home_page'
get '/schools/school_profile'
get '/schools/logout'
get '/school_images/school_image'
post '/school_images/school_image_upload'
get '/schools/school_activation'
get '/schools/total_school'
get '/schools/school_delete'
get '/passwords/forgot_password'
post  "/passwords/send_password"
get '/passwords/reset_password'
post '/passwords/new_password'
get '/school_images/total_image'
get "/school_images/delete_image"
post "/teachers/teacher_reg"
get "/teachers/teacher_profile"
post '/teachers/teacher_profile_upload'
get '/teachers/teacher_home'
post 'teachers/teacher_image_upload'
get '/teachers/teacher_signin'
post '/teachers/teacher_login'
get '/teachers/total_image'
get "/teachers/delete_image"
#map.connect
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'schools#homepage'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
