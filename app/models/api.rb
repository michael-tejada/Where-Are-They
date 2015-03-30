class Api

  #url to search for movie by title = "http://api.themoviedb.org/3/search/movie?api_key=#{API_KEY}&query=#{movie_title}"

  def get_cast_data(movie_title)
    @movie_title = sanitizeTitle(movie_title)
    @movie_title
    # clean up the user's input to feed to the URL

    # use movie_title to find the movie by title
    # capture the movie's id
    # find the movie cast by movie id
    # return the cast data
  end

  def sanitizeTitle(movie_title)
    movie_title.strip.downcase.gsub(/ +/, '%20')
  end

end