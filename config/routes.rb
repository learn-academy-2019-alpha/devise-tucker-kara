Rails.application.routes.draw do
  resources :skateboards
  devise_for :users
  root to: "skateboards#index"
end
