class MoviesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    movies = Movie.where(english: true)
    render json: movies.as_json
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],

    )
    movie.save
    render json: movie
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(params[:id])

    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || movie.english
    movie_id = params["id"]

    movie.save
    render json: movie
  end

  def delete
    movie = Movie.find(params[:id])
    movie.destroy
    render json: { message: "The movie has been deleted." }
  end
end
