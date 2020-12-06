defmodule ChirpWeb.PostLive.PostComponent do
  use ChirpWeb, :live_component

  def render(assigns) do
    ~L"""
    <div id="post-<%= @post.id %>" class="post">
      <div class="row">
        <div class="column post-body">
          <b>@<%= @post.username %></b>
          <br />
          <%= @post.body %>
        </div>
      </div>

      <div class="row">
        <div class="column">
          <a href="#" phx-click="like" phx-target="<%= @myself %>">
            Likes: <%= @post.likes_count %>
          </a>
        </div>

        <div class="column">
          <a href="#" phx-click="repost" phx-target="<%= @myself %>">
            Reposts: <%= @post.reposts_count %>
          </a>
        </div>

        <div class="column">
          <%= live_patch to: Routes.post_index_path(@socket, :edit, @post.id) do %>
            Edit
          <% end %>

          <%= link to: "#", phx_click: "delete", phx_value_id: @post.id do %>
            Delete
          <% end %>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("like", _, socket) do
    Chirp.Timeline.increment_likes(socket.assigns.post)
    {:noreply, socket}
  end

  def handle_event("repost", _, socket) do
    Chirp.Timeline.increment_reposts(socket.assigns.post)
    {:noreply, socket}
  end
end
