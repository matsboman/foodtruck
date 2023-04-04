defmodule FoodTruck.Application do
  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      FoodTruck.Repo,
      FoodTruckWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: FoodTruck.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
