class MoviesController < ApplicationController

  def index
    @movie = Movie.new
  end

  def create
    @cast_data = Movie.new.get_cast_data(params[:movie_id])

    respond_to do |f|
    f.html
    f.js
    end
    
  end

end