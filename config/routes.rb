Rails.application.routes.draw do
  get 'comment/new'
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
