defmodule FoodTruck.Trucks.Truck do
  use Ecto.Schema
  import Ecto.Changeset
  require Logger

  @derive {
    Jason.Encoder,
    only: [
      :id,
      :applicant,
      :facility_type,
      :cnn,
      :location_description,
      :address,
      :blocklot,
      :block,
      :lot,
      :permit,
      :status,
      :food_items,
      :x,
      :y,
      :latitude,
      :longitude,
      :schedule,
      :dayshours,
      :noi_sent,
      :approved,
      :received,
      :prior_permit,
      :expiration_date,
      :location,
      :fire_prevention_districts,
      :police_districts,
      :supervisor_districts,
      :zip_codes,
      :neighborhoods
    ]
  }
  schema "trucks" do
    field(:applicant, :string)
    field(:facility_type, :string)
    field(:cnn, :string)
    field(:location_description, :string)
    field(:address, :string)
    field(:blocklot, :string)
    field(:block, :string)
    field(:lot, :string)
    field(:permit, :string)
    field(:status, :string)
    field(:food_items, :string)
    field(:x, :string)
    field(:y, :string)
    field(:latitude, :string)
    field(:longitude, :string)
    field(:schedule, :string)
    field(:dayshours, :string)
    field(:noi_sent, :string)
    field(:approved, :string)
    field(:received, :string)
    field(:prior_permit, :string)
    field(:expiration_date, :string)
    field(:location, :string)
    field(:fire_prevention_districts, :string)
    field(:police_districts, :string)
    field(:supervisor_districts, :string)
    field(:zip_codes, :string)
    field(:neighborhoods, :string)
  end

  @doc false
  def changeset(config, attrs) do
    config
    |> cast(
      attrs,
      [
        :id,
        :applicant,
        :facility_type,
        :cnn,
        :location_description,
        :address,
        :blocklot,
        :block,
        :lot,
        :permit,
        :status,
        :food_items,
        :x,
        :y,
        :latitude,
        :longitude,
        :schedule,
        :dayshours,
        :noi_sent,
        :approved,
        :received,
        :prior_permit,
        :expiration_date,
        :location,
        :fire_prevention_districts,
        :police_districts,
        :supervisor_districts,
        :zip_codes,
        :neighborhoods
      ]
    )
    |> validate_required([
      :id,
      :applicant,
      :facility_type,
      :cnn,
      :location_description,
      :address,
      :blocklot,
      :block,
      :lot,
      :permit,
      :status,
      :food_items,
      :x,
      :y,
      :latitude,
      :longitude,
      :schedule,
      :dayshours,
      :noi_sent,
      :approved,
      :received,
      :prior_permit,
      :expiration_date,
      :location,
      :fire_prevention_districts,
      :police_districts,
      :supervisor_districts,
      :zip_codes,
      :neighborhoods
    ])
  end
end
