defmodule FoodTruckWeb.Router do
  @moduledoc false
  use FoodTruckWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", FoodTruckWeb.Api, as: :api do
    pipe_through(:api)

    scope "/trucks" do
      post("/", TrucksController, :truck)
      post("/get", TrucksController, :list_with_filters)
      get("/", TrucksController, :list)
      get("/:id", TrucksController, :show)
      delete("/:id", TrucksController, :delete)
    end
  end
end
