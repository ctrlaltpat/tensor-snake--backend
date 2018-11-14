Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :scores, only: [:index, :show, :create]
      resources :reviews, only: [:index, :show]
    end
  end
end
