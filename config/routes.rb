Rails.application.routes.draw do
  devise_for :users
  root to: "skills#index"
end
