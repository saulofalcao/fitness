ControleDeEstoque::Application.routes.draw do

  match '/cadastrar',  to: 'users#new',            via: 'get'
  match '/ajuda',    to: 'static_pages#ajuda',    via: 'get'
  match '/sobre',   to: 'static_pages#sobre',   via: 'get'
  match '/contato', to: 'static_pages#contato', via: 'get'

  resources :users
  resources :professors

  resources :aulas

  resources :reservas

  get "static_pages/home"
  get "static_pages/ajuda"
  
  post "reservas/check_available"
  

  root "static_pages#home"
  #root new_reserva_path
  #root "aulas#index"
  
  #get "reservas/index"

  
  # get "static_pages/index"
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
