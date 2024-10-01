Rails.application.routes.draw do
  root "posts#index"
  resources :comments
  resources :posts
  devise_for :users
end
