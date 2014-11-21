defmodule Pitch.RoomChannel do
  use Phoenix.Channel
  import Ecto.Query, only: [from: 2]

  def join(socket, room_id, _message) do
    room = find_room(String.to_integer(room_id))
    room = %{room | users_present: room.users_present + 1}

    Repo.update room

    socket = assign(socket, :room_id, String.to_integer(room_id))
    socket = assign(socket, :user_ready, false)

    broadcast_update(socket, room)
    {:ok, socket}
  end

  def event(socket, "user:ready", _message) do
    socket = assign(socket, :user_ready, true)

    room = get_assign(socket, :room_id) |> find_room
    room = %{room | users_ready: room.users_ready + 1}

    Repo.update room

    broadcast_update(socket, room)
    socket
  end

  def event(socket, "ping", _message) do
    room = get_assign(socket, :room_id) |> find_room

    broadcast_update(socket, room)
    socket
  end

  def event(socket, "note:send", message) do
    IO.puts "MADE IT HERE"
    IO.puts message["note"]
    broadcast socket, "note:play", %{note: message["note"]}
    socket
  end

  def leave(socket, _message) do
    room = get_assign(socket, :room_id) |> find_room
    room = %{room | users_present: room.users_present - 1}

    if get_assign(socket, :user_ready) do
      room = %{room | users_ready: room.users_ready - 1}
    end

    Repo.update room

    broadcast_update(socket, room)
    socket
  end

  defp broadcast_update(socket, room) do
    broadcast socket, "room:update", %{users_present: room.users_present, users_ready: room.users_ready}
  end

  defp find_room(room_id) do
    Repo.all(from r in Room, where: r.id == ^room_id)
    |> List.first
  end
end
