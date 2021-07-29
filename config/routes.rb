Rails.application.routes.draw do
  devise_for :users
  root to: "skills#index"
  resources :users, only: [:new, :delete]
  resources :skills, only: [:new, :create] 
  resources :sum_exps, only: [:new, :create]
  
end
