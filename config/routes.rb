Rails.application.routes.draw do
  resources :customers, only: [:index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "customers#index"

  get "/customers/alphabetized", to: "customers#alphabetized", as: "alphabetized"
  get "/customers/missing_email", to: "customers#missing_email", as: "missing_email"
end
