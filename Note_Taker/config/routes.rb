Rails.application.routes.draw do
  resources :todolists
  get "/" => "home#index"
  root :to => "home#index"

  devise_for :users


  resources :notes
  resources :todolists
  resources :classrooms
  resources :professors
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
