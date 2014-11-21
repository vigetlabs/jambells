defmodule Repo.Migrations.AddNamesToRooms do
  use Ecto.Migration

  def up do
    "ALTER TABLE rooms ADD name varchar(140)"
  end

  def down do
    "ALTER TABLE rooms DROP COLUMN name"
  end
end
