class ActorsController < ApplicationController
  def display_actor
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
end
