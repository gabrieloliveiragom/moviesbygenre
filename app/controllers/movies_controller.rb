class MoviesController < ApplicationController
  def index
  end

  def search
  	#getting the genre and capitalizing each word
  	@genre = params[:genre] || "Drama"
  	@genre = @genre.split.map{ |x| x.capitalize }.join(" ")
  	@page = params[:page].to_i || 1
  	@genre_id = Genre.getGenreId(@genre)
  	@search_result = Movie.for(@genre_id.to_s, @page)
  	@movies = @search_result["results"]
  	@id_to_genre = Genre.getIDtoGenre()
    @movies_per_page = @search_result["total_results"] / (@search_result["total_pages"])
    if (@search_result["total_pages"] * @movies_per_page != @search_result["total_results"])
      @movies_per_page += 1
    end
  end
end
