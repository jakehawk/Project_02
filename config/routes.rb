Rails.application.routes.draw do

  root to: 'users#welcome'

  get 'users/new' => 'users#new', as: :new_user
  get 'users/welcome' => 'users#welcome'
  post 'users' => 'users#create'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
