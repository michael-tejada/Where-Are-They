class Search 

	extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  attr_accessor :movie_title, :url, :cast_data

  def get_cast_data(movie_title)
    # clean up the user's input to feed to the URL
    @movie_title = sanitizeTitle(movie_title)
    # use movie_title to find the movie by title
    # @url = "http://api.themoviedb.org/3/search/movie?api_key=#{API_KEY}&query=#{@movie_title}"
    # @cast_data = JSON.load(open(@url))
    @cast_data = "hello"
    # capture the movie's id
    # find the movie cast by movie id
    # return the cast data
  end

  def sanitizeTitle(movie_title)
    movie_title.strip.downcase.gsub(/ +/, '%20')
  end
end