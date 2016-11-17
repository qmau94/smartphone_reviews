Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root "static_pages#home"
  resources :searches
  resources :mobiles, only: [:show, :index]
  resources :mobile_brands, only: [:show,:index]
  resources :reviews, only: [:show, :index] do
    resources :comments do
      resources :comments
    end
  end
  get "contact",to: 'contact#contact'
  namespace :admin do
    resources :mobiles
    get "dashboard", to: "pages#home"
    resources :users
    resources :reviews
    resources :mobile_brands
  end
end
