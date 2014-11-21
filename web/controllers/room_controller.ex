defmodule DingMyBells.RoomController do
  use Phoenix.Controller
  import DingMyBells.Router.Helpers
  alias Phoenix.Controller.Flash

  plug :action

  def index(conn, _params) do
    render conn, "index.html", rooms: Repo.all(Room)
  end

  def show(conn, %{"id" => id}) do
    room = Room.find(id)

    case room do
      %Room{} ->
        render conn, "show.html", room: room
      _ ->
        render conn, "not_found.html"
    end
  end

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"room" => room_params}) do
    new_room = %Room{name: room_params["name"]}

    case Room.validate(new_room) do
      [] ->
        room = Repo.insert new_room
        redirect conn, room_path(:show, room.id)
      _ ->
        conn
        |> Flash.put(:notice, "Name must be specified")
        |> redirect room_path(:new)
    end
  end

  def not_found(conn, _params) do
    render conn, "not_found.html"
  end

  def error(conn, _params) do
    render conn, "error.html"
  end
end
