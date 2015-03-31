class SearchesController < ApplicationController

  def index
    @search = Search.new
	end

  def create
    @movie_data = Search.new.get_cast_data(params[:search][:movie_search])
    # @movie_poster = "<img src='#{@cast_data} %>'>"
    respond_to do |f|
      f.html
      f.js
    end
  end

end
