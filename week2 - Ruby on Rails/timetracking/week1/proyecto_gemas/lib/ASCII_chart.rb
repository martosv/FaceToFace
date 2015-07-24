require 'imdb'
require 'pry'
require 'ascii_charts'

class ImdbRating

	def initialize film
		@film = film
		@id_movies = []
		@title_movies = []
		@rating = {}
		@chart_data = []
		find_id	
		get_rating
		chart_draw
	end

	def find_id
		@film.each do |film|
			i = Imdb::Search.new(film)
			@title_movies << i.movies[0].title
			@id_movies << i.movies[0].id
		end
		@id_movies
	end

	def show_title
		puts @title_movies
	end

	def get_rating
		rating = {}
		@id_movies.each do |id_film|
			movie = Imdb::Movie.new(id_film)
			rating[movie.title] = movie.rating
		end
		@rating = rating
	end

	def chart_draw
		i = 0
		@rating.each do |key, value|
			i += 1
			key = i
			@chart_data << [key, value.round]
		end
		@chart_data
		show_histogram
	end

	def show_histogram
		puts AsciiCharts::Cartesian.new(@chart_data, :bar => true, :hide_zero => true).draw
		puts ' '
		i = 0
		@rating.each do |key, value|
			i += 1
			puts "#{i}" + '. ' + "#{key}"
		end 
	end
end

film = []

film[0] = "Ghostbusters"
film[1] = "Die Hard"
film[2] = "The Godfather"
film[3] = "Home alone"
film[4] = "Star trek, the new generation"
film[5] = "The night of the living dead"
film[6] = "Titanic"

imdb = ImdbRating.new film

