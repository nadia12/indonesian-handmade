IndonesianHandmade::Application.routes.draw do
  root :to => "home#index"
  get "home/index"

  resources :etalases
  resources :categories
  resources :tutorials

  devise_for :users
 
  mount Ckeditor::Engine => "/ckeditor"
end
