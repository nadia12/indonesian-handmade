IndonesianHandmade::Application.routes.draw do
  root :to => "home#index"
  get "show_up/profile"
  get "home/index"

  resources :etalases
  resources :categories
  resources :tutorials
  resources :comments

  devise_for :users
 
  mount Ckeditor::Engine => "/ckeditor"
end
