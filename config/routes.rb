TechElectronics::Application.routes.draw do

  devise_for :users
  get '/users/:id', :to => 'users#show', :as => :user

  resources :parts

  root :to => 'visitors#new'
end
