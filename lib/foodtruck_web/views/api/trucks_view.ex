defmodule FoodTruckWeb.Api.TrucksView do
  @moduledoc false

  use FoodTruckWeb, :view
  alias FoodTruckWeb.Api.TrucksView

  def render("show.json", %{data: result}) do
    render_one(result, TrucksView, "trucks.json")
  end

  def render("trucks.json", result) do
    result
  end
end
