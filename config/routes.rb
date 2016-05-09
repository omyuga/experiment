Rails.application.routes.draw do
  
  resources :jobs do
      resources :applications
  end
  
  devise_for :users, controllers: { registrations: "registrations" }
  root 'bprofiles#index'

  resources :bprofiles
  resources :users

 
  get 'pages/index'
  get '/home' => 'pages#home'
  get '/user/:id' => 'pages#profile'
  get '/explore' => 'pages#explore'

end
