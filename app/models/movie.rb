class Movie

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  def get_cast_data(movie_id)
    #url for finding a movie by ID
    url = "http://api.themoviedb.org/3/movie/#{movie_id}/credits?api_key=#{ENV['movie_database_api_key']}"
    json = JSON.load(open(url))

    cast_data = json['cast']
    # return cast data
  end

end