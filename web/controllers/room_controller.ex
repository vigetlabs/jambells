defmodule DingMyBells.RoomController do
  use Phoenix.Controller
  import Ecto.Query, only: [from: 2]

  plug :action

  def index(conn, _params) do
    render conn, "index.html", rooms: Repo.all(Room)
  end

  def show(conn, %{"id" => id}) do
    records = Repo.all(from r in Room, where: r.id == ^String.to_integer(id))

    case records do
      [room] ->
        render conn, "show.html", room: room
      [] ->
        render conn, "not_found.html"
    end
  end

  def not_found(conn, _params) do
    render conn, "not_found.html"
  end

  def error(conn, _params) do
    render conn, "error.html"
  end
end
