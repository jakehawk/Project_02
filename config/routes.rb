Rails.application.routes.draw do

  root to: 'decks#index'

  get 'users/new' => 'users#new', as: :new_user
  get 'users/welcome' => 'users#welcome'
  post 'users' => 'users#create'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get 'decks' => 'decks#index'
  post 'decks/' => 'decks#create'
  get 'decks/new' => 'decks#new', as: :new_deck
  get 'decks/:id' => 'decks#show', as: :deck
  get 'decks/:id/edit' => 'decks#edit', as: :edit_deck
  patch 'decks/:id' => 'decks#update'
  delete 'decks/:id' => 'decks#destroy'

end
