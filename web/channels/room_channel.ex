defmodule DingMyBells.RoomChannel do
  use Phoenix.Channel

  def join(socket, room_id, _message) do
    room = Room.find(room_id)
    room = %{room | users_present: room.users_present + 1}

    Repo.update room

    socket = assign(socket, :room_id, room_id)
    socket = assign(socket, :user_ready, false)

    {:ok, socket}
  end

  def event(socket, "user:joined", _message) do
    room = get_assign(socket, :room_id) |> Room.find

    broadcast_update(socket, room)
    socket
  end

  def event(socket, "user:ready", _message) do
    socket = assign(socket, :user_ready, true)

    room = get_assign(socket, :room_id) |> Room.find
    room = %{room | users_ready: room.users_ready + 1}

    Repo.update room

    broadcast_update(socket, room)
    socket
  end

  def event(socket, "note:send", message) do
    IO.puts "NOTE PLAYED: #{message["note"]}"
    broadcast socket, "note:play", %{note: message["note"]}
    socket
  end

  def leave(socket, _message) do
    room = get_assign(socket, :room_id) |> Room.find
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
end
