Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  resources :mobiles, only: :show
  namespace :admin do
    resources :mobiles
    get "dashboard", to: "pages#home"
    resources :users
    resources :reviews
    resources :mobile_brands
  end
end
