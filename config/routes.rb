IndonesianHandmade::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root :to => "home#index"

  get "show_up/:id/tutorial", to: 'show_up#tutorials', as: 'show_up_tutorials'
  get "show_up/:id/etalase", to: 'show_up#etalases', as: 'show_up_etalases'
  get "show_up/:id/comment", to: 'show_up#comments', as: 'show_up_comments'
  get "show_up/:id", to: 'show_up#profile', as: 'show_up_profile'
  get "home/index"
  get "categories", to: 'categories#index'
  get "categories/show/:id", to: 'categories#show', as: 'categories_show'

  resources :etalases do
    collection do
      get 'select/:category_id', to: 'etalases#select', as: 'select'
      post 'search'
      get 'search', to: 'etalase#newsearch'
    end
  end
  
  resources :tutorials do
    collection do
      get 'select/:category_id', to: 'tutorials#select', as: 'select'
      post 'search'
      get 'search', to: 'tutorials#newsearch'
      get 'thumb_up/:id', to: 'tutorial#thumb_up', as: 'thumb_up'
    end
  end
  resources :comments

  devise_for :users, :controllers => { :registrations => "registrations" }

  namespace :admin do 
    root 'dashboard#index'
    get "tutorials", to:'tutorials#index'
    get "etalases", to:'etalases#index'
    get "members", to:'members#index'
    get "comments", to:'comments#index'
    get "sign_up", to:'sign_up#index'
    resources :categories
  end
 
end
