# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, DingMyBells.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "D0jh0V8F/Kcb1A0hJm2qjytjYVXQ36TruHUHFTjuEklogQdYCNDSMsQHmB0QePlIF9RVVKVTI29mHukYYRT+Jw==",
  catch_errors: true,
  debug_errors: false,
  error_controller: DingMyBells.PageController

# Session configuration
config :phoenix, DingMyBells.Router,
  session: [store: :cookie,
            key: "_ding_my_bells_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
