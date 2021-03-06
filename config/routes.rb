DespAduaneros::Application.routes.draw do
  resources :paises

  resources :seguimientos

  resources :pagos

  resources :liquidacions

  resources :departamentos

  resources :tipo_documentos

  resources :estado_despachos

  resources :documentos

  resources :proveedors

  resources :despachos

  resources :proveedors

  resources :despachos

  resources :despachos

  resources :despachos

  resources :despachos

  resources :carpetas do
    member do
      get :datos
    end
  end

  resources :clientes

  resources :personals

  resources :usuarios

  resources :consultas do
    collection do
      get :clientes
      get :codigo
    end
  end

  resources :dashboard

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
  resources :login

  match "/logout" => "login#destroy"
  root :to => "login#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
