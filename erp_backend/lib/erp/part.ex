defmodule Erp.Part do
  use Ecto.Schema
  import Ecto.Changeset

  schema "parts" do
    field :build_time, :time
    field :name, :string
    field :part_id, :integer
    field :quantity, :integer
    field :plant_id, :id

    timestamps()
  end

  @doc false
  def changeset(part, attrs) do
    part
    |> cast(attrs, [:name, :part_id, :quantity, :build_time])
    |> validate_required([:name, :part_id, :quantity, :build_time])
    |> unique_constraint(:part_id)
  end
end
