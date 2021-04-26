Rails.application.routes.draw do
  root to: "charges#index"
  
  get 'login' => 'sessions#new'
  post 'login'=> 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'

  resources :users, only: [:create]
  resources :charges
end
