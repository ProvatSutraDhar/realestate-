Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  get 'dashboard/properties'
  get 'dashboard/reports'
  resources :properties
  devise_for :accounts
root 'public#main', to: 'public'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
