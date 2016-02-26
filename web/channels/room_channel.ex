defmodule Beebchat.RoomChannel do
  use Phoenix.Channel

  def join("rooms:lobby", _message, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", %{"username" => username, "body" => body}, socket) do
    broadcast! socket, "new_msg", %{username: username, body: body}
    {:noreply, socket}
  end

  def handle_out("new_msg", payload, socket) do
    push socket, "new_msg", payload
    {:noreply, socket}
  end
end
