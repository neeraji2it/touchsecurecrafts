ICS::Application.routes.draw do



  devise_for :users, :controllers => {:sessions => 'sessions'}


  match "/pay" => "adaptive_payments#pay",               :as => :paypal_return
  match "/cancel" => "adaptive_payments#cancel",         :as => :paypal_cancel
  match "/ipn_notify" => "adaptive_payments#ipn_notify", :as => :paypal_ipn

  resources :admins do
    collection do
      get :products
      get :seller
      get :buyer
      get :non_profit
      get :sales
      get :week
      get :review_product
    end
    member do
      put :confirm_product
      put :reject_product
    end
  end
  
  resources :banner_images
  
  resources :causes do
    member do
      get :like
      put :unlike
    end
  end

  resources :categories
  resources :promotion_codes
  resources :invitations
  resources :billing_shipping_addresses

  resources :users do
    resources :contact_shop_owners
    collection do
      get :buyer
      post :buyer_create
      put :username
    end
  end

  resources :line_items do
    resources :orders do
      member do
        put :shipping
      end
      collection do
        get :pay
      end
    end
  end
  resources :carts do
    member do
      get :edit_lineitem
      put :update_lineitem
    end
  end

  resources :products do
    resources :images
    collection do
      get :search
      get :categories
      get :sub_categories
      get :import
      post :upload_products
      get :cause_types
    end
    member do
      get :add_to_cart
      post :create_comment
      get :sort_review
      get :preview_product
      get :review
      post :product_review
      post :favourite
      put :update_favourite
      put :update_mark_favourite
      get :reject
    end
  end

  resources :profiles do
    member do
      get :profile
      put :profile_update
      put :change_password
    end
    collection do
      get :week
      get :non_profit_week
    end
  end

  resources :contacts 
  resources :creatives
  match '/auth/:provider/callback' => 'omniauths#create'
  get '/favourites' => 'products#favourites', :as => :favourites
  get '/category' => 'home#category', :as => :category
  post '/create_alert' => 'home#create_alert', :as => :create_alert
  get '/index' => 'home#index', :as => :index
  get '/search_causes' => 'home#search_causes', :as => :search_causes
  get '/all_causes' => 'home#all_causes', :as => :all_causes
  get '/order_history' => 'profiles#order_history', :as => :order_history
  get '/dashboard' => 'profiles#dashboard', :as => :dashboard
  get '/admin_dashboard' => 'admins#admin_dashboard', :as => :admin_dashboard
  get '/faqs' => 'home#faqs', :as => :faqs
  get '/about_us' => 'home#about_us', :as => :about_us
  get '/delivery_information' => 'home#delivery_information', :as => :delivery_information
  get '/privacy_policy' => 'home#privacy_policy', :as => :privacy_policy
  get '/terms_conditions' => 'home#terms_conditions', :as => :terms_conditions
  #get '/contact_us' => 'contacts#new', :as => :contact_us
  post '/contact' => 'home#contact', :as => :contact
  get '/shipping_returns' => 'home#shipping_returns', :as => :shipping_returns
  get '/secure_shopping' => 'home#secure_shopping', :as => :secure_shopping
  get '/how_it_works' => 'home#how_it_works', :as => :how_it_works
  get '/seller/:id' => 'home#seller', :as => :seller
  get '/sell' => 'home#sell', :as => :sell
  get '/cancel_refund_policy' => 'home#cancel_refund_policy', :as => :cancel_refund_policy
  get '/legal_disclaimer' => 'home#legal_disclaimer', :as => :legal_disclaimer
  get '/follow/:id' => "constants#follow", :as => :follow
  get '/favorite/:id' => "constants#favorite", :as => :favorite

  root :to => 'home#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  match '/return'=>'carts#return'

  match '/notification' => 'orders#notification'

  match 'orders/:id/refund' => 'orders#refund', :as => 'refund'
  resources :signatures, only: [:create, :new]
  resources :contract_signs, only: [:create, :new]
  resources :icici_signs, only: [:create, :new]
  resources :payments do
    member do
      get :payment_pdf
      get :next_step
      get :thankyou
      get :resend
    end
  end
  resources :icici_payments do
    member do
      get :payment_pdf
      get :resend
    end
  end
  resources :contracts do
    member do
      get :payment_pdf
      get :resend
    end
  end

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
