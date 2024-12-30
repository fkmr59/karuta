Rails.application.routes.draw do
  resources :user_matches
  resources :matches
  resources :scores
  resources :cards
  devise_for :users

  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  namespace :admin do
    # devise_for :users
    devise_scope :user do
      get "/register", to: "users/registrations#new"
      post "/register", to: "users/registrations#create"

      get "/login", to: "users/sessions#new"
      post "/login", to: "users/sessions#create"
      delete "/logout", to: "users/sessions#destroy"
    end
  end

  namespace :admin do
    resources :dashboard, only: [ :index ]
    root to: "dashboard#index"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
