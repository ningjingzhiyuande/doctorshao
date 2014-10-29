Doctorshao::Application.routes.draw do



  get "admin"=>"admin/home#images"
  resources :projects
  resources :pages

  root "home#index"
  get "about_shao"=> "home#about_shao"
  get "about_hao" => "home#about_hao"

  Article::KIND.each do |k,v|
     get "admin/articles/#{k}"=>"admin/articles#index",kind: k   
     get "admin/articles/#{k}/new"=>"admin/articles#new",kind: k        
  end

  namespace :admin do 

  	 resources :articles
  	 resources :pages
  	 resources :projects do
        collection do
           get :other
        end
  	 end
     resources :home do
      collection do 
       get :images
       get :video
       get :friends
       get :image_new
       get :qa
       get :huaxu
     
       post :upload_video
       post :upload_friends
      end
      member do 
      	#put :update
        post :move
      end
  	end
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
