defmodule Repo.Migrations.AddPongedToUsers do
  use Ecto.Migration

  def up do
    "ALTER TABLE users ADD ponged boolean DEFAULT false"
  end

  def down do
    "ALTER TABLE users DROP COLUMN ponged"
  end
end
