defmodule Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def up do
    "CREATE TABLE users(id serial primary key, room_id int, token varchar(140), ready boolean DEFAULT false)"
  end

  def down do
    "DROP TABLE users"
  end
end
