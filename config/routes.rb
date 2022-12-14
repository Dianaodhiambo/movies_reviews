Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end

    
  end
end
