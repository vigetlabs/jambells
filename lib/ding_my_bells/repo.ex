defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://elixir_pitch:L4yZL2OumjNufJEz@localhost/ding_my_bells"
  end

  def priv do
    app_dir(:ding_my_bells, "priv/repo")
  end
end
