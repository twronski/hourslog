Rails.application.routes.draw do
  resources :profiles
  resources :improductive_reasons
  resources :hours_records
  resources :bays
  resources :voltage_levels
  resources :activities
  resources :reports
  resources :projects
  devise_for :users

  post '/hours_records_approval', to: 'hours_records#set_workflow'

  root to: 'home#index'
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
