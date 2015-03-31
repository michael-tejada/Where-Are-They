class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
  end

  def create
    twitter_feed = Tweet.new.get_twitter_feed(params[:actor_name])
    
    respond_to do |f|
      f.html
      f.js
    end
  end

end