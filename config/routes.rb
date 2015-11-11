Tblazersfans::Application.routes.draw do




  resources :game_recaps do

    collection { post :import}

    get 'recaps/:page', :action => :index, :on => :collection



  end

  resources :stories

  devise_for :ballers

  resources :recappers do

    collection { post :import}

    get 'recaps/:page', :action => :index, :on => :collection

  end

  get "contact" => "page#contact"
  get "home" => "page#home"
  get "news" => "page#news"
  get "forum" => "page#forum"
  get "recaps" => "page#recaps"
  get "store" => "page#store"




  get "page/recaps15_16"
  get "page/recaps14_15"
  get "page/recaps13_14"
  get "page/recaps12_13"


  #makes the recaps work for whatever page that is with 'pretty' seo friendly url :D

  get 'recaps15_16/page/:page', :to => 'page#recaps15_16'
  get 'recaps14_15/page/:page', :to => 'page#recaps14_15'
  get 'recaps13_14/page/:page', :to => 'page#recaps13_14'

  get 'recaps12_13/page/:page', :to => 'page#recaps12_13'

  #get 'game_recaps/params[:id]', :to => 'game_recaps/params[:game_string]'
  #20151031-phoenix-suns-at-portland-trail-blazers


  get "page/store"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'page#home'

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
