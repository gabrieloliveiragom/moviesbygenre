Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/search' => 'movies#search'
  root 'movies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
