defmodule NoPhoenix.Movie do
  use Ecto.Schema

  schema "movies" do
    field :title, :string
    field :tagline, :string
    has_many :characters, NoPhoenix.Character
    has_one :distributor, NoPhoenix.Distributor
    many_to_many :actors, NoPhoenix.Actor, join_through: "movies_actors"
  end
end
