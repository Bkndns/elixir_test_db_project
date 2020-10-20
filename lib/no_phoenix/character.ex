defmodule NoPhoenix.Character do
  use Ecto.Schema

  schema "characters" do
    field :name, :string
    belongs_to :movie, NoPhoenix.Movie
  end
end
