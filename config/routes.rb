Rails.application.routes.draw do
  resources :bays
  resources :voltage_levels
  resources :activities
  resources :reports
  resources :projects
  devise_for :users
  root to: 'home#index'
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
