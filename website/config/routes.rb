Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :pictures,only: [:create,:destroy]

  root 'persons#profile'
  get 'users', to: 'persons#users' 
  get 'posts/new', as: 'user_root'

end
