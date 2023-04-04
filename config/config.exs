# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :foodtruck,
  namespace: FoodTruck,
  ecto_repos: [FoodTruck.Repo]

config :foodtruck, FoodTruckWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: FoodTruckWeb.ErrorView, accepts: ~w(json)]

# Configures Phoenix JSON library
config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
