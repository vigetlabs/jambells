defmodule DingMyBells.RoomView do
  use DingMyBells.View

  def pretty(song_key) do
    String.replace(song_key, "_", " ") |> String.capitalize
  end
end
