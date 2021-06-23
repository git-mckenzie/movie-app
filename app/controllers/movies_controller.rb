class MoviesController < ApplicationController
  # def all_movies
  #   movies = Movie.all
  #   render json: movies.as_json
  # end

  # def one_movie_by_id
  #   movie = Movie.find(params[:id])
  #   render json: movie.as_json
  # end

  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
    )
    movie.save
    render json: movie.as_json
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def update
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot

    movie.save
    render json: movie.as_json
  end

  def delete
    movie = Movie.find(params[:id])
    movie.destroy
    render json: { message: "The movie has been deleted." }
  end
end
