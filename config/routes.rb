Rails.application.routes.draw do
  resources :artists
  resources :songs

  get 'artists/:id/songs', to: 'artist#songs_index'
  get 'artist/:id/songs/:song_id', to: 'artists#show'

  root 'songs#index'
  
end
