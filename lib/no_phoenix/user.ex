defmodule NoPhoenix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:username, :string)
    field(:encrypted_password, :string)
    field(:email, :string)
    field(:confirmed, :boolean, default: false)
    field(:password, :string, virtual: true)
    field(:password_confirmation, :string, virtual: true)

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:username, :encrypted_password, :email, :confirmed, :password, :password_confirmation])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:username)
    |> validate_required([:username])
    |> validate_length(:username, min: 3)
    # |> validate_custom_name()
  end


  @custom_names ["Vika", "Dasha", "John", "Nelly", "Polli", "Polya", "Johan", "James", "Bond"]
  def validate_custom_name(changeset) do
    name = get_field(changeset, :username)

    if name in @custom_names do
      changeset
    else
      add_error(changeset, :username, "is not valid a school girl")
    end
  end

  def set_default_name(changeset) do
    name = get_field(changeset, :username)

    if is_nil(name) do
      put_change(changeset, :username, "Anonimus")
    else
      changeset
    end
  end

  def registration_changeset(struct, params) do
    struct
    |> cast(params, [:username])
    |> set_default_name()
  end

end
