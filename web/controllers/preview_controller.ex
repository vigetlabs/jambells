defmodule DingMyBells.PreviewController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"song" => song_name}) do
    render conn, "show.html",
      song_name:  song_name,
      song_notes: Song.notes_for(song_name)
  end

end

