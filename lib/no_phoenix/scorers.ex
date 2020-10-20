defmodule NoPhoenix.Scorers do
  use Ecto.Schema
  import Ecto.Changeset

  schema "scorers" do
    field(:name, :string)
    field(:team, :string)
    field(:goals, :integer)
  end


  def changeset(scorers, params \\ %{}) do
    scorers
    |> cast(params, [:name], [])
  end
end
