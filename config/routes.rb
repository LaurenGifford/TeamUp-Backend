Rails.application.routes.draw do
  resources :ur_tasks
  resources :tasks
  resources :projects
  resources :teammates
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
