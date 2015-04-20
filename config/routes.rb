Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'doctor_translations/new'

  get 'system_languages/new'

  get 'locations/new'

  get 'doctors/new'

  root 'static_pages#home'
  get ':locale', locale: /en|gu|hi|mr|ta/ , to: 'static_pages#home'

  get 'home', to: 'static_pages#home'
  get ':locale/home', locale: /en|gu|hi|mr|ta/ , to: 'static_pages#home'

  get 'help', to: 'static_pages#help'
  get ':locale/help', locale: /en|gu|hi|mr|ta/ , to: 'static_pages#help'

  get 'about', to: 'static_pages#about'
  get ':locale/about', locale: /en|gu|hi|mr|ta/ , to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'
  get ':locale/contact', locale: /en|gu|hi|mr|ta/ , to: 'static_pages#contact'

  get 'search', to: 'locations#search'
  get ':locale/search', locale: /en|gu|hi|mr|ta/ , to: 'locations#search'

  get 'profile', to: 'doctors#profile'
  get ':locale/profile', locale: /en|gu|hi|mr|ta/ , to: 'doctors#profile'

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
