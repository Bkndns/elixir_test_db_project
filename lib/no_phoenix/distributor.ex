defmodule NoPhoenix.Distributor do
  use Ecto.Schema

  schema "distributors" do
    field :name, :string
    belongs_to :movie, NoPhoenix.Movie
  end
end
