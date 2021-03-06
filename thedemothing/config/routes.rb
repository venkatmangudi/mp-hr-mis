Beauty::Application.routes.draw do
  resources :relationships


  resources :addresses


  resources :additional_charges


  resources :sanctioned_posts


  resources :health_dept_locations


  resources :blocks


  resources :divisions


  resources :employment_types


  resources :hospital_reports


  resources :roles

  resources :user

  resources :hospitals


  devise_for :users
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/edit' => 'devise/registrations#edit' 
    get '/users/new'  => 'devise/registrations#new'
  end

  resources :promotions


  resources :showcauses


  resources :achievements


  resources :leaveemps


  resources :leave_types


  resources :qualifications


  resources :universities


  resources :specialisations


  resources :qualification_names


  resources :qualification_types


  resources :dependents


  resources :statuses


  resources :relations


  resources :postings


  resources :designations


  resources :institution_masters


  resources :institution_types


  resources :special_cadres


  resources :tempus


  resources :locations


  resources :religions


  resources :categories


  resources :castes


  resources :martial_stats


  resources :blood_groups


  resources :genders


  resources :pincodes


  resources :states


  resources :cities


  resources :districts


  resources :taluks


  resources :emp_edus


  resources :emp_adds


  resources :employees

  resources :posts


  get "home/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
