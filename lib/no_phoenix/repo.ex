defmodule NoPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :no_phoenix,
    adapter: Ecto.Adapters.Postgres
end
