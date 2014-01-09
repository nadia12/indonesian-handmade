IndonesianHandmade::Application.routes.draw do
  root :to => "home#index"

  get "show_up/:id/tutorial", to: 'show_up#tutorials', as: 'show_up_tutorials'
  get "show_up/:id/etalase", to: 'show_up#etalases', as: 'show_up_etalases'
  get "show_up/:id/comment", to: 'show_up#comments', as: 'show_up_comments'
  get "show_up/:id", to: 'show_up#profile', as: 'show_up_profile'
  get "home/index"

  resources :etalases do
    collection do
      get 'select/:category_id', to: 'etalases#select', as: 'select'
      post 'search'
      get 'search', to: 'etalase#newsearch'
    end
  end
  
  resources :categories

  resources :tutorials do
    collection do
      get 'select/:category_id', to: 'tutorials#select', as: 'select'
      post 'search'
      get 'search', to: 'tutorials#newsearch'
    end
  end
  resources :comments

  devise_for :users, :controllers => { :registrations => "registrations" }
 
  mount Ckeditor::Engine => "/ckeditor"
end
