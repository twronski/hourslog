Rails.application.routes.draw do
  get 'evaluation/rate'
  resources :sub_skills
  resources :main_skills
  resources :profiles
  resources :improductive_reasons
  resources :hours_records
  resources :bays
  resources :voltage_levels
  resources :activities
  resources :reports
  resources :projects
  resources :evaluations, only: [:index, :show, :edit]
  
  devise_for :users , :skip => [:registrations]

  post '/hours_records_approval', to: 'hours_records#set_workflow'
  get '/hours_records_approval/:id', to: 'hours_records#show_workflow'

  root to: 'home#index'
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
