Rails.application.routes.draw do
  resources :artists, only: [:show] do
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  end

  get 'artists/:id/songs', to: 'artist#songs_index'
  get 'artist/:id/songs/:song_id', to: 'artists#show'

  root 'songs#index'

end
