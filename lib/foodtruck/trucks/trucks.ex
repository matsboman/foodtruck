defmodule FoodTruck.Trucks.Trucks do
  alias FoodTruck.Trucks.Truck
  alias FoodTruck.Repo
  import Ecto.Query

  def upsert(attrs \\ %{}) do
    %Truck{}
    |> Truck.changeset(attrs)
    |> Repo.insert(on_conflict: :replace_all, conflict_target: :id)
  end

  def list() do
    Repo.all(Truck)
  end

  def list(params) do
    Repo.all(query(params))
  end

  def get(%{"id" => id}), do: Repo.get(Truck, id)

  def delete(%{"id" => id}) do
    {int_val, ""} = Integer.parse(id)
    Repo.delete_all(from(t in Truck, where: t.id == ^int_val))
    :ok
  end

  defp query(params) do
    Truck
    |> select([t], t)
    |> where(^add_where_filters(params))
  end

  defp add_where_filters([]) do
    dynamic([f], fragment("true"))
  end

  defp add_where_filters(filters) do
    Enum.reduce(filters, dynamic(true), fn {key, value}, dynamic ->
      dynamic_filter(dynamic, {key, value})
    end)
  end

  defp dynamic_filter(dynamic, {key, value}) do
    dynamic([f], ^dynamic and fragment("? = ?", field(f, ^String.to_atom(key)), ^value))
  end
end
