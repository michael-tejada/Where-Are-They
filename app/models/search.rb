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
    @movie_search = sanitizeTitle(movie_search)

    url = "http://api.themoviedb.org/3/search/movie?api_key=#{ENV['movie_database_api_key']}&query=#{@movie_search}"
    json = JSON.load(open(url))

    @movie_data = json['results'][0..4].sort_by{|k| k['release_date']}
  end

  def sanitizeTitle(movie_search)
    movie_search.strip.downcase.gsub(/ +/, '%20')
  end
end

