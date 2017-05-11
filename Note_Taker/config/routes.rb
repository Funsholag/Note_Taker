Rails.application.routes.draw do
  resources :todolists
  resources :todos
  get "/" => "home#index"
  root :to => "home#index"
  post "/notes/search" => "notes#search"
  devise_for :users


  resources :notes
  resources :todolists
  resources :classrooms
  resources :professors
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
