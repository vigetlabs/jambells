defmodule Room do
  use Ecto.Model
  use Ecto.Model.Schema
  import Ecto.Query, only: [from: 2]

  validate room, name: present()

  schema "rooms" do
    field :name, :string
    field :users_present, :integer
    field :users_ready, :integer
  end

  def find(id) when is_integer(id) do
    _find(id)
  end

  def find(id) do
    _find(String.to_integer(id))
  end

  defp _find(id) do
    Repo.all(from r in Room, where: r.id == ^id) |> List.first
  end
end
