Rails.application.routes.draw do
  resources :properties
  devise_for :accounts

  get 'dashboard', to: 'dashboard#index'
  get 'dashboard/properties'
  get "/profile/:id" => 'dashboard#profile', as: :profile
  get 'dashboard/reports'

root 'public#main', to: 'public'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
