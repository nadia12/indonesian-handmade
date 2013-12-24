IndonesianHandmade::Application.routes.draw do
  get "show_up/profile"
  resources :tutorials

  get "home/index"
  devise_for :users
  root :to => "home#index"
end
