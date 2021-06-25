Rails.application.routes.draw do
  devise_for :users
  root to: "skills#index"
  resources :users, only: [:new, :delete]
  resources :skills, only: [:new]
end
