Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :answers
  resources :articles
  resources :comments
  resources :lawyers
  resources :queries
  resources :users

root "users#index"

end
