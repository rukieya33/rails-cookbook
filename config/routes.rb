Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories, except: [:edit, :update, :destroy] do
    resources :bookmarks, except: [:edit, :update, :show]
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  root "categories#index"
end
