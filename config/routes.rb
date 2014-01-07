IndonesianHandmade::Application.routes.draw do
  root :to => "home#index"
  get "show_up/profile"

  get "show_up/mytutorial", to: 'show_up#mytutorials', as: 'show_up_tutorials'
  get "show_up/myetalase", to: 'show_up#myetalases', as: 'show_up_etalases'
  get "show_up/mycomment", to: 'show_up#mycomments', as: 'show_up_comments'
  get "home/index"

  resources :etalases
  resources :categories
  resources :tutorials
  resources :comments

  devise_for :users, :controllers => { :registrations => "registrations" }
 
  mount Ckeditor::Engine => "/ckeditor"
end
