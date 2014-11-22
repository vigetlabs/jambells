defmodule Repo.Migrations.RemoveNameFromRooms do
  use Ecto.Migration

  def up do
    "ALTER TABLE rooms DROP name"
  end

  def down do
    "ALTER TABLE rooms ADD name varchar(140)"
  end
end
