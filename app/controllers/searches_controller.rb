class SearchesController < ApplicationController

  def index
		@cast_data = Api.new.get_cast_data(params[:movie_title])
	end

end
