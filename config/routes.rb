Getsluckynumbers::Application.routes.draw do
  root to: 'games#home'

  post 'numbers/:id/edit' => 'numbers#update'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  # get 'games' => 'games#index'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  resources :games do
    resources :questions do
    end
  end

  # Example resource route (maps HTTP verbs to controller actions automatically):
  delete 'authentications' => 'authentications#destroy'
  post 'authentications' => 'authentications#create'
  get 'authentications' => 'authentications#new'
  resources :questions, :except =>['show']
  get 'questions/mega' => 'questions#mega'
  get 'questions/super' => 'questions#super'
  get 'questions/fantasy' => 'questions#fantasy'
  get 'questions/dailyfour' => 'questions#dailyfour'
  get 'questions/dailythree' => 'questions#dailythree'
  get 'questions/powerball' => 'questions#powerball'
  get 'numbers/megan' => 'numbers#megan'
  get 'numbers/supern' => 'numbers#supern'
  get 'numbers/fantasyn' => 'numbers#fantasyn'
  get 'numbers/dailyfourn' => 'numbers#dailyfourn'
  get 'numbers/dailythreen' => 'numbers#dailythreen'
  resources :games, :users, :authentications, :numbers



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
