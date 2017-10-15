class Movie
	include HTTParty

	key_value = "35d2dc2f27ea1b822e51dfa3b27486f6";
	min_votes = 1000

	base_uri "http://api.themoviedb.org"
	default_params api_key: key_value, language: 'en-US', sort_by: 'vote_average.desc', include_adult: false, include_video: false, 'vote_count.gte' => min_votes
	format :json

	def self.for(genre, page)
		get("/3/discover/movie", query: { with_genres: genre, page: page})
	end

end