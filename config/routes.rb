ChattyApp::Application.routes.draw do
  get "chatrooms/index"

  get "chatrooms/create"

  get "chatrooms/show"

  root to: 'welcome#index'

  resources :chatrooms do
    resources :messages
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
#== Route Map
# Generated on 23 Nov 2013 18:09
#
#      chatrooms_create GET    /chatrooms/create(.:format)                         chatrooms#create
#        chatrooms_show GET    /chatrooms/show(.:format)                           chatrooms#show
#                  root        /                                                   welcome#index
#     chatroom_messages GET    /chatrooms/:chatroom_id/messages(.:format)          messages#index
#                       POST   /chatrooms/:chatroom_id/messages(.:format)          messages#create
#  new_chatroom_message GET    /chatrooms/:chatroom_id/messages/new(.:format)      messages#new
# edit_chatroom_message GET    /chatrooms/:chatroom_id/messages/:id/edit(.:format) messages#edit
#      chatroom_message GET    /chatrooms/:chatroom_id/messages/:id(.:format)      messages#show
#                       PUT    /chatrooms/:chatroom_id/messages/:id(.:format)      messages#update
#                       DELETE /chatrooms/:chatroom_id/messages/:id(.:format)      messages#destroy
#             chatrooms GET    /chatrooms(.:format)                                chatrooms#index
#                       POST   /chatrooms(.:format)                                chatrooms#create
#          new_chatroom GET    /chatrooms/new(.:format)                            chatrooms#new
#         edit_chatroom GET    /chatrooms/:id/edit(.:format)                       chatrooms#edit
#              chatroom GET    /chatrooms/:id(.:format)                            chatrooms#show
#                       PUT    /chatrooms/:id(.:format)                            chatrooms#update
#                       DELETE /chatrooms/:id(.:format)                            chatrooms#destroy
