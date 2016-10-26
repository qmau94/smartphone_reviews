Rails.application.routes.draw do
  resources :comments
  resources :reviews
  devise_for :users
  root "static_pages#home"
end
