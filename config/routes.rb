Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root "static_pages#home"
  resources :mobiles, only: :show
  resources :reviews, only: [:show, :index]
  namespace :admin do
    resources :mobiles
    get "dashboard", to: "pages#home"
    resources :users
    resources :reviews
    resources :mobile_brands
  end
end
