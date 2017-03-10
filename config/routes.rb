Rails.application.routes.draw do
  get 'sessions/new'

  resources :users, :posts

  root :to => 'logins#home'

  post '/login' => "logins#login"
end
