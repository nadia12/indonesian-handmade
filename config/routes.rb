IndonesianHandmade::Application.routes.draw do
  root :to => "home#index"
  get "show_up/profile"

  get "show_up/mytutorial", to: 'show_up#mytutorials', as: 'show_up_tutorials'
  get "show_up/myetalase", to: 'show_up#myetalases', as: 'show_up_etalases'
  get "show_up/mycomment", to: 'show_up#mycomments', as: 'show_up_comments'
  get "home/index"
  get "categories", to: 'categories#index'

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
    resources :categories
  end
 
  mount Ckeditor::Engine => "/ckeditor"
end
