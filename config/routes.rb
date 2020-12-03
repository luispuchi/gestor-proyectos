Rails.application.routes.draw do
  get'projects/index'
  #get 'projects/dashboard'
  post 'projects/new'
  get 'dashboard', to: 'projects#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'projects#index'
 
end
