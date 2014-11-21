defmodule Repo.Migrations.RemoveUserCountFieldsOnRooms do
  use Ecto.Migration

  def up do
    "ALTER TABLE rooms DROP users_present, DROP users_ready"
  end

  def down do
    "ALTER TABLE rooms ADD users_present integer DEFAULT 0, ADD users_ready integer DEFAULT 0"
  end
end
