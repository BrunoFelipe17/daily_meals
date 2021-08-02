defmodule Exmeal.Meal do
  # id, descricao, data, calorias
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:id, :description, :date, :calories]

  schema "meals" do
    field(:description, :string)
    field(:date, :date)
    field(:calories, :integer)

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
  end
end
