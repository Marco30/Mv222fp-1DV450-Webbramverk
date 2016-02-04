Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

    root  :to => redirect('/login')
  get   '/login' => 'loginsessions#new'
  post  '/login' => 'loginsessions#create'

  get   'admin_login' => 'loginsessions#new_admin', as: :login_admin
  post  'admin_login' => 'loginsessions#create_admin', as: :do_login_admin

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  
  get   'api_users/:id/:api_user_id' => 'user_api_keys#destroy', as: :apikeyD
  get   'api_users/:api_user_id' => 'user_api_keys#create', as: :new_apikey
  get   '/logout'  => 'loginsessions#destroy', as: :logout
  get   '/adminlogout' => 'loginsessions#destroy_admin', as: :logout_admin
  get   'admin' => 'admins#show', as: :admin

# get '/api_users' => 'apiusers#new',  as: :new_user
#post '/api_users' => 'apiusers#create', as: :create_user
#get '/api_users' => 'apiusers#destroy', as: :destroy_user
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  
  resources :user_api_keys 
  
resources :api_users, only: [:create, :destroy, :new, :index] do
resources :user_api_keys 
end

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
