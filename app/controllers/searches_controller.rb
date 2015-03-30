class SearchesController < ApplicationController

  def index
    @search = Search.new
	end

  def create
    @cast_data = Search.new.get_cast_data(params[:search][:movie_title])
    respond_to do |f|
      f.html
      f.js
    end
  end

end
