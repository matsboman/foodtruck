defmodule FoodTruckTest do
  use ExUnit.Case
  doctest FoodTruck

  test "greets the world" do
    assert FoodTruck.hello() == :world
  end
end
