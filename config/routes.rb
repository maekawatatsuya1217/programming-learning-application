Rails.application.routes.draw do
  devise_for :users
  root to: "blogs#index"
  resources :blogs do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update]
  resources :events
  resources :forms
end