Rails.application.routes.draw do
  devise_for :admins
  devise_for :users do 
    resources :comments
  end
  
  root 'movies#index'

  get '/users/', to: 'users#index', as: 'users'
  get '/user/:id', to: 'users#show', as: 'user'
  delete '/user/:id', to: 'users#destroy'


  resources :movies do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
