Rails.application.routes.draw do

  resources :invoices

  resources :jobs do
      resource :applications
  end

  devise_for :users, controllers: { registrations: "registrations" }
  root 'bprofiles#index'
  #resources :jobs
  #resources :applications
  resources :bprofiles
  resources :users

  get 'pages/index'
  get '/home' => 'pages#home'
  get '/user/:id' => 'pages#profile'
  get '/explore' => 'pages#explore'

end
