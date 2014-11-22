defmodule DingMyBells.RoomChannel do
  use Phoenix.Channel

  def join(socket, room_id, _message) do
    socket = assign(socket, :room_id, String.to_integer(room_id))

    {:ok, socket}
  end

  def event(socket, "user:joined", message) do
    if inactive_room(socket) do
      room_id = get_assign(socket, :room_id)

      user = Repo.insert %User{token: message["user_token"], room_id: room_id}
      room = Room.find(room_id)

      socket = assign(socket, :user, user)

      broadcast_update(socket, room)
    end

    socket
  end

  def event(socket, "user:ready", _message) do
    if inactive_room(socket) do
      user = get_assign(socket, :user)
      user = %{user | ready: true}

      Repo.update user

      room = get_assign(socket, :room_id) |> Room.find

      broadcast_update(socket, room)
    end

    socket
  end

  def event(socket, "game:start", _message) do
    room = get_assign(socket, :room_id) |> Room.find

    if !room.active do
      Repo.update %{room | active: true}
      broadcast socket, "game:started", room_info(room)
    end

    socket
  end

  def leave(socket, _message) do
    user = get_assign(socket, :user)

    case user do
      %User{} ->
        Repo.delete user
      _ ->
        # noop
    end

    room = get_assign(socket, :room_id) |> Room.find

    broadcast_update(socket, room)
    socket
  end

  defp inactive_room(socket) do
    Room.find(get_assign(socket, :room_id)).active == false
  end

  defp broadcast_update(socket, room) do
    broadcast socket, "room:update", room_info(room)
  end

  defp room_info(room) do
    users = room.users.all

    present = users |> Enum.count
    ready   = users |> Enum.filter(fn(u) -> u.ready end) |> Enum.count

    user_info = users |> Enum.sort(fn(u1, u2) -> u1.id < u2.id end) |> Enum.map(&(&1.token))

    %{users_present: present, users_ready: ready, user_info: user_info}
  end
end
