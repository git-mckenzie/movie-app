class ActorsController < ApplicationController
  # def display_actor
  #   actor = Actor.find(params[:id])
  #   render json: actor.as_json
  # end

  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def create
    actor = Actor.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
    )
    actor.save
    render json: actor.as_json
  end

  def show
    actor = Actor.find(params[:id])
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
