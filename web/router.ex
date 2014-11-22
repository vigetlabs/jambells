defmodule DingMyBells.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  scope "/" do
    pipe_through :browser

    # testing songs route
    get "/preview",       DingMyBells.PreviewController, :index
    get "/preview/:song", DingMyBells.PreviewController, :show

    get "/",       DingMyBells.RoomController, :index
    get "/join",   DingMyBells.RoomController, :join
    get "/new",    DingMyBells.RoomController, :new
    get "/:slug",  DingMyBells.RoomController, :show
    post "/rooms", DingMyBells.RoomController, :create

    channel "room", DingMyBells.RoomChannel
  end
end
