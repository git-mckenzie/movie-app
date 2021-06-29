class ActorsController < ApplicationController
  def index
    actors = Actor.all.order(age: :desc)
    render json: actors.as_json
  end

  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params["age"],
      gender: params["gender"],
      movie_id: params["movie_id"],
    )
    actor.save
    render json: actor.as_json
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end

  def update
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)

    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.age = params["age"] || actor.age
    actor.gender = params["gender"] || actor.gender
    actor.movie_id = params["movie_id"] || actor.movie_id

    actor.save
    render json: actor.as_json
  end

  def delete
    actor = Actor.find(params[:id])
    actor.destroy
    render json: { message: "The actor has been deleted." }
  end
end
