Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :classrooms
  resources :professors
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
