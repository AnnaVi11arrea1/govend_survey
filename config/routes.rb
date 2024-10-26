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

  get "/wizards/show" => "wizards#show"

  get '/manifest.json' => 'application#manifest'

  post "/wizards/step1" => "wizards#update"
  post "/wizards/step2" => "wizards#update"
  post "/wizards/step3" => "wizards#update"
  post "/wizards/step4" => "wizards#update"
  post "/wizards/step5" => "wizards#update"
  post "/wizards/step6" => "wizards#update"
  post "/wizards/step7" => "wizards#update"
  post "/wizards/step8" => "wizards#update"
  post "/wizards/step9" => "wizards#update"
  post "/wizards/step10" => "wizards#update"
  post "/wizards/step11" => "wizards#update"
  post "/wizards/step12" => "wizards#update"






end
