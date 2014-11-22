defmodule Repo.Migrations.AddSongToRooms do
  use Ecto.Migration

  def up do
    "ALTER TABLE rooms ADD song varchar(140)"
  end

  def down do
    "ALTER TABLE rooms DROP COLUMN song"
  end
end
