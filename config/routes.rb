Us1::Application.routes.draw do

  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/about', to:"static_pages#about", via: 'get'
  
  match "/travel/tour", to: "travel_pages#tour", via: 'get'
  match "/travel/cruise", to: "travel_pages#cruise", via: 'get'
  match "/travel/rail", to: "travel_pages#rail", via: 'get'
  match "/travel/car", to: "travel_pages#car", via: 'get'

  match "/resources/agents", to: "resource_pages#agents", via: 'get'
  match "/resources/travelers", to: "resource_pages#travelers", via: 'get'
  
  match "/getthere/about", to: "getthere_pages#about", via: 'get'
  match "/getthere/login", to: "getthere_pages#login", via: 'get'

  match "/corporate/privatejets", to: "corporate_pages#jets", via: 'get'
  match "/corporate/onlinebooking", to: "corporate_pages#booking", via: 'get'

  match "/virtuoso/luxury", to: "virtuoso_pages#luxury", via: 'get'
  get "/getthere/portal" => redirect("http://wcp.getthere.net/us1travel")

  #match "users/main", to: "users#main" , via: 'get'
  
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
