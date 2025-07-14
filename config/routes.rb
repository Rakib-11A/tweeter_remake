Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  resources :users, only: :show
  # get "retweets/create"
  # get "likes/create"
  resources :tweets do
    resources :likes, only: :create
    resources :retweets, only: :create
  end
  root 'tweets#index'
end
