Rails.application.routes.draw do



  get 'rental/index'
  get 'rental/show/:id' => "rental#show", :as => 'rental_show'

  devise_for :users


  resources :movies
  resources :movies do
    get 'page/:page', :action => :index, :on => :collection
    resources :comments
  end
  get 'person/index'

  resources :products
  get "home" => "page#home"
  get "about_us" => "page#about_us"
  get "contact_us" => "page#contact_us"
  post "contact_us" => "page#contact_us"
  #match "contact_us" => "page#contact_us", :via => [:post, :get] //same way as above

  get "movie/:id/mail" => "movies#mail", :as => 'mail_movie'

  get '/newsletter'=> "page#newsletter"
  get "blog" => "page#blog"

  get "articles" => "page#articles"
  get "login" => "page#login"


  get "page/calendar(/:year(/:month))" => "page#calendar", :as => 'calendar'
  get 'person/index'

  get 'page/contact_us'
  get 'student/home'

  get 'student/courses'

  get 'student/about'

  get 'student/degree'

  get 'page/home'

  get 'page/about_us'



  get 'page/products'

  get 'page/newsletter'

  get 'page/blog'

  get 'page/calendar'

  get 'page/articles'

  get 'page/login'

  get 'student/home'

  get 'student/neural'

  get 'student/scheduling'

  get 'student/skills'

  get 'student/skills'

  get 'student/experiences'

  get 'student/academics'

  get 'say/hello'
  get 'say/goodbye'

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
  #     #     resources :sales do
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
  #     #   end
end
