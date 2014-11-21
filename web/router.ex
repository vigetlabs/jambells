defmodule DingMyBells.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/" do
    pipe_through :browser

    get "/",    DingMyBells.RoomController, :index
    get "/:id", DingMyBells.RoomController, :show

    channel "room", Pitch.RoomChannel
  end
end
