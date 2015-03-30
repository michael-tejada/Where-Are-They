class SearchesController < ApplicationController

	def index
		@search = Search.new
	end

	def create
		@cast_data = Search.new.get_cast(params[:search][:keyword])
	end

end
