defmodule Repo.Migrations.AddLatencyToUsers do
  use Ecto.Migration

  def up do
    "ALTER TABLE users ADD latency float DEFAULT 0"
  end

  def down do
    "ALTER TABLE users DROP COLUMN latency"
  end
end
