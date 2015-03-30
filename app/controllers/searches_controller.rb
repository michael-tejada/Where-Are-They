class SearchesController < ApplicationController

	def index
		@cast_data = Search.new.get_cast(params[:keyword])
	end

end
