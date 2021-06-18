Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/actors/:id", controller: "actors", action: "display_actor"

  get "/all_movies" => "movies#all_movies"

  get "/one_movie/:id" => "movies#one_movie_by_id"
end
