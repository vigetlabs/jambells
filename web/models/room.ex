defmodule Room do
  use Ecto.Model
  use Ecto.Model.Schema
  import Ecto.Query, only: [from: 2]

  validate room, name: present()

  schema "rooms" do
    field :name, :string
    has_many :users, User
  end

  def find(id) when is_integer(id) do
    _find(id)
  end

  def find(id) do
    _find(String.to_integer(id))
  end

  defp _find(id) do
    Repo.all(from r in Room, where: r.id == ^id, preload: :users) |> List.first
  end
end
