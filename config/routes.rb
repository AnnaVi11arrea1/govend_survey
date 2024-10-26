Rails.application.routes.draw do
  devise_for :users

  resources :surveys do
    resources :steps, only: [:show, :update]
  end
  
  resources :steps
  resources :wizards
  resources :users

  root "wizards#index"



  get "/" => "wizards#index"

  get "wizards/show" => "wizards#show"







end
