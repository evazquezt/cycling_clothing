Rails.application.routes.draw do

  # Routes for the Apparel resource:
  # CREATE
  # get '/apparels/new', controller: 'apparels', action: 'new', as: 'new_apparel'
  # post '/apparels', controller: 'apparels', action: 'create', as: 'apparels'

  # READ
  # get '/apparels', controller: 'apparels', action: 'index'
  # get '/apparels/:id', controller: 'apparels', action: 'show', as: 'apparel'

  # UPDATE
  # get '/apparels/:id/edit', controller: 'apparels', action: 'edit', as: 'edit_apparel'
  # patch '/apparels/:id', controller: 'apparels', action: 'update'

  # DELETE
  # delete '/apparels/:id', controller: 'apparels', action: 'destroy'
  #------------------------------

  get "/home", :controller => "home", :action => "show"

  get '/auto', :controller => 'auto', :action => 'look_up_weather'
  get '/auto/results', :controller => 'auto', :action => 'results'

  get '/manual', :controller => 'manual', :action => 'conditions'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
