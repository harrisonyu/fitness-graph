FitnessGraph::Application.routes.draw do

  root :to => 'home#public'
  
  match '/home'   => 'home#index', :as => :home
  
  get   '/home/exercise/new'        	=>  'exercise#new',     :as => :new_exercise
  post  '/home/exercise/create' 	    =>  'exercise#create',  :as => :create_exercise
  get   '/home/exercise/:id'    	    =>  'exercise#show',    :as => :show_exercise
  get   '/home/exercise/delete/:id'   =>  'exercise#delete',  :as => :delete_exercise
  
  get	  '/home/exercise/:id/weightset/new'		  =>	'weightset#new',	:as	=> :new_weightset
  post	'/home/exercise/:id/weightset/create' 	=> 	'weightset#create',	:as => :create_weightset
  get   '/home/exercise/:id/weightset/delete'   =>  'weightset#delete', :as => :delete_weightset
  
  get	  '/home/exercise/:id/cardio/new'		  =>	'cardio#new',		:as	=> :new_cardio
  post	'/home/exercise/:id/cardio/create' 	=> 	'cardio#create',	:as => :create_cardio
  get   '/home/exercise/:id/cardio/delete'  =>  'cardio#delete',  :as => :delete_cardio
  
  match '/auth/:provider/callback'  => 'sessions#create'
  match '/auth/failure'             => 'sessions#failure'
  match '/signout'                  => 'sessions#destroy',  :as => :signout
  match '/signin'                   => 'sessions#new',      :as => :signin
  
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
