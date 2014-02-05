TechElectronics::Application.routes.draw do

  resources :categories 

  get 'parts/request', :to => 'parts#index_request'
  get 'parts/new_request', :to => 'parts#new_request'
  resources :parts

  devise_for :users
  get '/users/:id', :to => 'users#show', :as => :user
	get '/users', :to => 'users#index', :as => :users

  root :to => 'visitors#new'
end
