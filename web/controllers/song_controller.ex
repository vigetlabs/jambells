defmodule DingMyBells.SongController do
  use Phoenix.Controller

  plug :action

  def preview(conn, %{"song" => song_name}) do
    render conn, "preview.html",
      song_name: song_name,
      song:      Song.notes_for(song_name)
  end

end

