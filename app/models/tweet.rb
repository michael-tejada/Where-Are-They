class Tweet

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  def get_twitter_feed(actor_name)
    #take the actor name
    #clean it up
    @actor_name = sanitize_name(actor_name)
    #search Twitter to find the user with that name

    
    binding.pry
    #get that user's timeline
    #return it as an embeddable object

    # timeline_url = "https://api.twitter.com/1.1/statuses/user_timeline.json?name=twitterapi"
    "this works"
  end

  def sanitize_name(actor_name)
    actor_name.gsub(' ', '%20')
  end

end

# ENV['twitter_consumer_key']
# ENV['twitter_consumer_secret']
# ENV['twitter_access_token']
# ENV['twitter_access_secret']