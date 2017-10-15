class MoviesController < ApplicationController
  def index
  end

  def search
  	#getting the genre and capitalizing each word
  	@genre = params[:genre] || "Drama"
  	@genre = @genre.split.map{ |x| x.capitalize }.join(" ")
  	@page = params[:page] || 1
  	@genre_id = Genre.getGenreId(@genre)
  	@search_result = Movie.for(@genre_id.to_s, @page)
  	@movies = @search_result["results"]
  	@id_to_genre = Genre.getIDtoGenre()
  end
end
