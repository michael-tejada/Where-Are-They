class SourcesController < ApplicationController

  def index
    @source = Source.new
  end

  def create
    @twitter_feed = Source.new.get_twitter_feed(params[:actor_name])
    @filmography = Source.new.get_actor_data(params[:actor_name])
    #@giphy = Source.new.get_giphy(params[:actor_name])
    respond_to do |f|
      f.html
      f.js
    end
  end

end