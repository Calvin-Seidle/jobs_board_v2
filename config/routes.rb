Rails.application.routes.draw do

  get 'main/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :results
  resources :user_jobs
  resources :requirements
  resources :jobs 
  resources :users
  get '/about' => 'home#about'
  get '/search' => 'home#search'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
