defmodule FoodTruck.Repo.Migrations.AddConfigurationsTable do
  use Ecto.Migration

  def change do
    create table(:trucks, primary_key: false) do
      add(:id, :integer, primary_key: true)
      add(:applicant, :text)
      add(:facility_type, :text)
      add(:cnn, :text)
      add(:location_description, :text)
      add(:address, :text)
      add(:blocklot, :text)
      add(:block, :text)
      add(:lot, :text)
      add(:permit, :text)
      add(:status, :text)
      add(:food_items, :text)
      add(:x, :text)
      add(:y, :text)
      add(:latitude, :text)
      add(:longitude, :text)
      add(:schedule, :text)
      add(:dayshours, :text)
      add(:noi_sent, :text)
      add(:approved, :text)
      add(:received, :text)
      add(:prior_permit, :text)
      add(:expiration_date, :text)
      add(:location, :text)
      add(:fire_prevention_districts, :text)
      add(:police_districts, :text)
      add(:supervisor_districts, :text)
      add(:zip_codes, :text)
      add(:neighborhoods, :text)
    end
  end
end
