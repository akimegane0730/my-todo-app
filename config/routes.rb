Rails.application.routes.draw do
  devise_for :users
  root "tops#index"

  resources :lists, only: [:new, :create, :edit, :update, :destroy] do
    resources :cards, except: [:index] do
      member do
        get 'complete', to: 'cards#complete'
      end
    end
  end
  resources :users, only: [:edit, :update, :show] 

  resources :oures, only: [:index]
  
end
