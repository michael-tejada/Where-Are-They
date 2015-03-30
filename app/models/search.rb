require 'open-uri'
require 'json'

class Search

	extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  attr_accessor :movie_title, :cast_data

  def get_cast_data(movie_title)
    # clean up the user's input to feed to the URL
    @movie_title = sanitizeTitle(movie_title)

    # use movie_title to find the movie by title
    url = "http://api.themoviedb.org/3/search/movie?api_key=#{ENV['movie_database_api_key']}&query=#{@movie_title}"
    json = JSON.load(open(url))
    
    # capture the movie's id
    # find the movie cast by movie id
    # return the cast data
  end

  def sanitizeTitle(movie_title)
    movie_title.strip.downcase.gsub(/ +/, '%20')
  end
end

