class Tweet

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  

  def get_twitter_feed(actor_name)

    client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['twitter_consumer_key']
    config.consumer_secret     = ENV['twitter_consumer_secret']
    config.access_token        = ENV['twitter_access_token']
    config.access_token_secret = ENV['twitter_access_secret']
    end

    possible_actors = client.user_search(actor_name)
    actor_screen_name = possible_actors.select {|a| a.verified? == true && a.name.downcase == actor_name.downcase}.first
    
    if actor_screen_name
      actor_timeline = client.user_timeline(actor_screen_name)
    end
  end

end

# ENV['twitter_consumer_key']
# ENV['twitter_consumer_secret']
# ENV['twitter_access_token']
# ENV['twitter_access_secret']