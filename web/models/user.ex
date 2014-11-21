defmodule User do
  use Ecto.Model
  use Ecto.Model.Schema

  schema "users" do
    field :ready, :boolean
    field :token, :string
    belongs_to :room, Room
  end
end
