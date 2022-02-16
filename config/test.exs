import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ejabberdex, EjabberdexWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "M+TpvoAj7Gh/fnl2YEjOPX/vC4aAO1BZL/qbLc//Srg4p3fB7j3PwwDjev5LXxlG",
  server: false

# In test we don't send emails.
config :ejabberdex, Ejabberdex.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
