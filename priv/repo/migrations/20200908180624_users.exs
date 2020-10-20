defmodule NoPhoenix.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:username, :string, unique: true)
      add(:encrypted_password, :string, null: false)
      add(:email, :string)
      add(:confirmed, :boolean, default: false)

      timestamps
    end
    create(unique_index(:users, [:username], name: :unique_usernames))
  end
end