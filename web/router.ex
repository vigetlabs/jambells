defmodule DingMyBells.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  scope "/" do
    pipe_through :browser

    get "/",          DingMyBells.RoomController, :index
    get "/rooms",     DingMyBells.RoomController, :index
    get "/rooms/new", DingMyBells.RoomController, :new
    get "/rooms/:id", DingMyBells.RoomController, :show
    post "/rooms",    DingMyBells.RoomController, :create

    channel "room", DingMyBells.RoomChannel
  end
end
