Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :walls
      resources :instances
      resources :users, only: [:show, :create]
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
    end
  end
end
