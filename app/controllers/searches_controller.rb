class SearchesController < ApplicationController

  def index
    @search = Search.new
	end

  def create
    movie_data = Search.new.get_movie_data(params[:search][:movie_search])
    @movie_id = movie_data['id']
    @movie_title = movie_data['title']
    @movie_poster_path = movie_data['poster_path']
    @movie_poster_url = "http://image.tmdb.org/t/p/w342#{@movie_poster_path}"

    @cast_data = Search.new.get_cast_data(@movie_id)

    #for each character, we want to display
    # character['character']
    # character['name']
    # character['profile_path']
    # binding.pry

    respond_to do |f|
      f.html
      f.js
    end
  end

end
