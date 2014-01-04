IndonesianHandmade::Application.routes.draw do
  root :to => "home#index"
  get "show_up/profile"

  get "show_up/mytutorial", to: 'show_up#mytutorials', as: 'show_up_tutorials'
  
  get "home/index"

  resources :etalases
  resources :categories
  resources :tutorials
  resources :comments

  devise_for :users
 
  mount Ckeditor::Engine => "/ckeditor"
end
