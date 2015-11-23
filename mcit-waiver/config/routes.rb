Rails.application.routes.draw do
  get 'welcome/index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :waivers

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  get '/help' => 'waivers#help'
  get '/cit_591_waivers' => 'waivers#cit_591_waivers'
  get '/cit_592_waivers' => 'waivers#cit_592_waivers'
  get '/cit_593_waivers' => 'waivers#cit_593_waivers'
  get '/cit_594_waivers' => 'waivers#cit_594_waivers'
  get '/cit_595_waivers' => 'waivers#cit_595_waivers'
  get '/cit_596_waivers' => 'waivers#cit_596_waivers'

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
