class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all
    render json: movies.as_json
  end

  def one_movie_by_id
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end
end
