require 'open-uri'
require 'json'

class Search

	extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  attr_accessor :movie_search, :cast_data

  def get_movie_data(movie_search)
    # clean up the user's input to feed to the URL

    @movie_search = sanitizeTitle(movie_search)

    if @movie_search.empty?
      return nil
    end

    # use movie_search to find the movie by title
    url = "http://api.themoviedb.org/3/search/movie?api_key=#{ENV['movie_database_api_key']}&query=#{@movie_search}"
    json = JSON.load(open(url))

    #isolate just the first result in the JSON returned by TMDB
    movie_data = json['results'].first
  end

  def get_cast_data(movie_id)
    #url for finding a movie by ID
    url = "http://api.themoviedb.org/3/movie/#{movie_id}/credits?api_key=#{ENV['movie_database_api_key']}"
    json = JSON.load(open(url))

    cast_data = json['cast']
    # return cast data
  end

  def sanitizeTitle(movie_search)
    movie_search.strip.downcase.gsub(/ +/, '%20')
  end
end

