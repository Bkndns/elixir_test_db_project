import Config
config :no_phoenix,
   ecto_repos: [NoPhoenix.Repo]
config :no_phoenix, NoPhoenix.Repo,
  database: "no_phoenix_repo",
  username: "admin",
  password: "123456",
  hostname: "localhost"
