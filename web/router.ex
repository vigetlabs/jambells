defmodule DingMyBells.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  scope "/" do
    pipe_through :browser

    get "/",      DingMyBells.RoomController, :index
    get "/new",   DingMyBells.RoomController, :new
    get "/:slug", DingMyBells.RoomController, :show

    channel "room", DingMyBells.RoomChannel
  end
end
