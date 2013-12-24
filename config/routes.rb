IndonesianHandmade::Application.routes.draw do

  get "show_up/profile"
  resources :tutorials

  resources :comments

  root :to => "home#index"
  get "home/index"

  resources :etalases
  resources :categories
  resources :tutorials

  devise_for :users
 
  mount Ckeditor::Engine => "/ckeditor"
end
