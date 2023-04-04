use Mix.Config

config :foodtruck,
  migrate_on_startup?: true

config :foodtruck, FoodTruckWeb.Endpoint,
  url: [port: 8000],
  http: [port: 8000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  show_sensitive_data_on_connection_error: true,
  watchers: []

config :foodtruck, FoodTruck.Repo,
  username: "postgres",
  password: "postgres",
  database: "foodtruck_dev",
  hostname: "localhost",
  pool_size: 10

config :logger, :console, metadata: [:request_id, :module, :line]

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
