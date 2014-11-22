defmodule Repo.Migrations.AddActiveToRooms do
  use Ecto.Migration

  def up do
    "ALTER TABLE rooms ADD active boolean DEFAULT false"
  end

  def down do
    "ALTER TABLE rooms DROP active"
  end
end
