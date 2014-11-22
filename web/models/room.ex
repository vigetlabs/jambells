defmodule Room do
  use Ecto.Model
  use Ecto.Model.Schema
  import Ecto.Query, only: [from: 2]

  schema "rooms" do
    field :song,        :string
    field :access_code, :string
    field :active,      :boolean
    has_many :users, User
  end

  def find_by_slug(slug) do
    Repo.all(from r in Room, where: r.access_code == ^slug, preload: :users) |> List.first
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
