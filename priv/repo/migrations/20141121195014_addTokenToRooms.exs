defmodule Repo.Migrations.AddTokenToRooms do
  use Ecto.Migration

  def up do
    "ALTER TABLE rooms ADD access_code varchar(140)"
  end

  def down do
    "ALTER TABLE rooms DROP COLUMN access_code"
  end
end
