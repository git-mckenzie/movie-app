Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/actors/:id", controller: "actors", action: "display_actor"

  # get "/all_movies" => "movies#all_movies"

  # get "/one_movie/:id" => "movies#one_movie_by_id"

  # get "/query_actor" => "actors#display_actor"

  # get "segment_actor/:id" => "actors#display_actor"   ## alternate to line 4 above

  # post "body_actor" => "actors#display_actor"

  # sessions REST routes
  post "/sessions" => "sessions#create"

  # movies REST routes
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "movies/:id" => "movies#update"
  delete "movies/:id" => "movies#delete"

  # actors REST routes
  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "actors/:id" => "actors#update"
  delete "actors/:id" => "actors#delete"

  # users REST routes

  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "users/:id" => "users#update"

  # moviegenre routes
  post "/moviegenres" => "moviegenres#create"
end
