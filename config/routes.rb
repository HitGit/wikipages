Rails.application.routes.draw do
  # match('contacts', {:via => :get, :to => 'contacts#index'})
  # match('contacts/new', {:via => :get, :to => 'contacts#new'})
  # match('contacts', {:via => :post, :to => 'contacts#create'})
  # match('contacts/:id', {:via => :get, :to => 'contacts#show'})
  # match('contacts/:id/edit', {:via => :get, :to => 'contacts#edit'})
  # match('contacts/:id', {:via => [:patch, :put], :to => 'contacts#update'})
  # match('contacts/:id', {:via => :delete, :to => 'contacts#destroy'})

  # match('/', {:via => :get, :to => 'contacts#index'})
  root to: 'contacts#index'

  resources :contacts do
    resources :phones, except: [:show]
  end

  resources :phones, except: [:show]


  # match('contacts/:contact_id/phones/new', {:via => :get, :to => 'phones#new'})
  # match('contacts/:contact_id/phones', {:via => :post, :to => 'phones#create'})
  # match('contacts/:contact_id/phones/:id/edit', {:via => :get, :to => 'phones#edit'})
  # match('contacts/:contact_id/phones/:id', {:via => [:patch, :put], :to => 'phones#update'})
  # match('contacts/:contact_id/phones/:id', {:via => :delete, :to => 'phones#destroy'})
  # match('phones/:id', {:via => [:patch, :put], :to => 'phones#update'})

end


# Rails.application.routes.draw do
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
# end