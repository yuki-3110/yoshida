Rails.application.routes.draw do

  resources :blogs 
  resources :favorites, only: [:create, :destroy]
  #   collection do
  #     post :confirm
  #   end
  # end

  # resources :blogs do
  #   collection do
  #     post :confirm
  #   end
  # end
  # get 'sessions/new'
  root 'users#new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
