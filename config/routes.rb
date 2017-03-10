Rails.application.routes.draw do

  resources :users, :posts

  root :to => 'sessions#home'

  post '/login' => "sessions#login"
  post 'sessions/login' => 'sessions#login'
end
