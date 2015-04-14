class SearchesController < ApplicationController

  def index
    @search = Search.new
	end

  def create
    @movie_data = Search.new.get_movie_data(params[:search][:movie_search])

    respond_to do |f|
      f.html
      f.js
    end
  end

end
