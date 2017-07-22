# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stl,
  ecto_repos: [Stl.Repo]

# Configures the endpoint
config :stl, Stl.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v2uXKJPPY8S+6bKsSPvp2l/zUJ3sRuvGXQJXVxMP/8b1WH5lcqPBUmwue0qXnax8",
  render_errors: [view: Stl.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Stl.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
