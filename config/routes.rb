Rails.application.routes.draw do
  get 'artists/new'

  get 'artists/create'

  get 'artists/edit'

  get 'artists/update'

  get 'artists/destroy'

  get 'artists/index'

  get 'artists/show'

  get 'genres/new'

  get 'genres/create'

  get 'genres/edit'

  get 'genres/update'

  get 'genres/destroy'

  get 'genres/index'

  get 'genres/show'

  get 'songs/new'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/update'

  get 'songs/destroy'

  get 'songs/index'

  get 'songs/show'

  resources :genres
  resources :artists
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
