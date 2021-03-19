Rails.application.routes.draw do
  resources :ur_tasks
  resources :tasks
  resources :projects
  resources :teammates
  resources :teams
  post "/google_login", to: "teammates#google_login" 
  get "/autologin", to: "teammates#autologin"
  post "/login", to: "teammates#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
