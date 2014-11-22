defmodule DingMyBells.RoomController do
  use Phoenix.Controller
  import DingMyBells.Router.Helpers
  alias Phoenix.Controller.Flash

  plug :action

  def index(conn, _params) do
    render conn, "index.html", rooms: Repo.all(Room)
  end

  def show(conn, %{"slug" => slug}) do
    room  = Room.find_by_slug(slug)
    users = room.users.all

    case room do
      %Room{} ->
        render conn, "show.html",
          room:    room,
          song:    Song.jinglebells,
          present: users |> Enum.count,
          ready:   users |> Enum.filter(fn(u) -> u.ready end) |> Enum.count

      _ ->
        render conn, "not_found.html"
    end
  end

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"room" => room_params}) do
    room = %Room{song: room_params["song"], access_code: randomAccessCode}
    Repo.insert room

    redirect conn, room_path(:show, room.access_code)
  end

  def not_found(conn, _params) do
    render conn, "not_found.html"
  end

  def error(conn, _params) do
    render conn, "error.html"
  end

  defp randomAccessCode do
    Enum.map(1..4, fn(x) -> randomLetter end) |> Enum.join
  end

  defp randomLetter do
    :random.seed(:os.timestamp)

    Enum.shuffle(alphabet) |> List.first
  end

  defp alphabet do
    ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  end
end

