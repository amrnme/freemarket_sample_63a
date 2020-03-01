Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :tests, only: [:index, :create]
  resources :destinations, only: [:create, :update]
  resources :users, only: [:show, :update] do
    resources :credits, only: [:index,:new]
    resources :destinations, only: [:index]
  end
end
