Rails.application.routes.draw do
  devise_for :users

  resources :steps
  resources :wizards
  resources :users



  root "wizards#index"



end
