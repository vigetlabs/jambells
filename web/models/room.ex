defmodule Room do
  use Ecto.Model
  use Ecto.Model.Schema

  schema "rooms" do
    field :users_present, :integer
    field :users_ready, :integer
  end
end
