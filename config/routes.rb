Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/search' => 'movies#search'
  get 'movies' => 'movies#index'
  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
