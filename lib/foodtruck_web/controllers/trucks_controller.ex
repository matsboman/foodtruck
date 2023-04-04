defmodule FoodTruckWeb.Api.TrucksController do
  use FoodTruckWeb, :controller

  alias FoodTruck.Trucks.Trucks
  alias Plug.Conn

  require Logger

  def show(conn, params) do
    Logger.debug("show: #{inspect(params)}")

    process_request(conn, params, fn ->
      case Trucks.get(params) do
        nil ->
          conn
          |> Conn.put_status(404)
          |> Conn.send_resp(:not_found, "")

        truck ->
          render(conn, "show.json", data: truck)
      end
    end)
  end

  def delete(conn, params) do
    Logger.debug("show: #{inspect(params)}")

    process_request(conn, params, fn ->
      Trucks.delete(params)

      conn
      |> Conn.put_status(204)
      |> Conn.send_resp(:no_content, "")
    end)
  end

  def truck(conn, params) do
    Logger.debug("Upsert truck: #{inspect(params)}")

    process_request(conn, params, fn ->
      Trucks.upsert(params)
      render(conn, "show.json", data: %{result: Map.get(params, "id")})
    end)
  end

  def list(conn, params) do
    Logger.debug("trucks: #{inspect(params)}")

    render(conn, "show.json", data: Trucks.list())
  end

  def list_with_filters(conn, params) do
    Logger.debug("list_with_filters: #{inspect(params)}")

    render(conn, "show.json", data: Trucks.list(params))
  end

  defp process_request(_, %{"id" => _}, fun), do: fun.()

  defp process_request(conn, _, _) do
    conn
    |> Conn.put_status(400)
    |> Conn.send_resp(:id_is_missing, "")
  end
end
