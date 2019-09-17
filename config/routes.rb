Rails.application.routes.draw do
  resources :extra_hours
  resources :profile_sub_skills
  resources :votes
  resources :suggestion_boxes
  resources :access_templates
  resources :doc_templates
  resources :main_equipments
  resources :improvement_actions
  resources :companies
  resources :sub_skills
  resources :main_skills
  resources :profiles
  resources :improductive_reasons
  resources :hours_records
  resources :bays
  resources :voltage_levels
  resources :activities
  resources :projects
  resources :evaluations
  
  devise_for :users , :skip => [:registrations]

  post '/hours_records_approval', to: 'hours_records#set_workflow'
  get '/hours_records_approval/:id', to: 'hours_records#show_workflow'

  root to: 'hour_records#index'
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
