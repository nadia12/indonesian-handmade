IndonesianHandmade::Application.routes.draw do
  resources :tutorials

  get "home/index"
  devise_for :users
  root :to => "home#index"
end
