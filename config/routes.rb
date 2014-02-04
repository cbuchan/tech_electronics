TechElectronics::Application.routes.draw do

  resources :categories 

  get 'parts/request', :to => 'parts#index_request'
  resources :parts

  devise_for :users
  get '/users/:id', :to => 'users#show', :as => :user

  root :to => 'visitors#new'
end
