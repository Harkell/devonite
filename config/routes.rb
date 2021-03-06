Rails.application.routes.draw do
  get 'panel/pageedit'
  resources :content
  resources :blogposts

  resources :charges

  get 'panel/requestchange'

  get 'panel/statistics'

  get 'panel/blog'

  devise_for :users
  root 'front#index'

  get 'front/index' 

  get 'front/api'

  get '/howitworks' => 'front#howitworks'

  get '/getstarted' => 'front#getstarted'

  get '/blog' => 'front#blog'

  get '/support' => 'front#support'

  match '/subscription', to: 'charges#prompt', via: 'get'

  match '/contacts',     to: 'contacts#new',   via: 'get'

  resources "contacts", only: [:new, :create]

  resources "requests", only: [:new, :create]

  resources "proposals", only: [:new, :create]


  scope '/hooks', :controller => :hooks do
  post :receiver
  end

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
