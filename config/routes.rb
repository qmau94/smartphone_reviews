Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  namespace :admin do
    resources :mobiles
    get "root", to: "pages#home"
    resources :users
  end
end
