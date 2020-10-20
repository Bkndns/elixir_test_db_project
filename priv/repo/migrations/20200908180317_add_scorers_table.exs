defmodule NoPhoenix.Repo.Migrations.AddScorersTable do
  use Ecto.Migration

  def change do
    create table("scorers") do
      add :name, :string, size: 40
      add :team, :string, size: 20
      add :goals, :integer
    end
  end
end
