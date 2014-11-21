defmodule Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def up do
    "CREATE TABLE rooms(id serial primary key, users_present int DEFAULT 0, users_ready int DEFAULT 0)"
  end

  def down do
    "DROP TABLE rooms"
  end
end
