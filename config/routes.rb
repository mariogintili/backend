Rails.application.routes.draw do
  use_doorkeeper scope: "/api/oauth"
  root to: "api/users#index"

  namespace :api do
    resources :users, only: [:index, :show, :create, :update]
    resources :oauth_applications, path: "/oauth-applications", only: [:index, :show, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
