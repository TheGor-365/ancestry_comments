Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  resources :comments
  devise_for :users
end
