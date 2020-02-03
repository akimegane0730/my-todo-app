Rails.application.routes.draw do
  devise_for :users
  root "tops#index"

  resources :lists, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:edit, :update]
end
