class Tweet

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  def get_twitter_feed(actor_name)
    "hello"
  end

end