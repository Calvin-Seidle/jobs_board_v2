Rails.application.routes.draw do

  resources :results
  resources :user_jobs
  resources :requirements
  resources :jobs
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'users/index'
  #get 'users/show'
  resources :users
  get '/about' => 'home#about'
  get 'search' => 'home#search'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
