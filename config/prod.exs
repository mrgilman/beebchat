use Mix.Config

config :beebchat, Beebchat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "beebchat.herokuapp.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :beebchat, Beebchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

config :logger, level: :info

