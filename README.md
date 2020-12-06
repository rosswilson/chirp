# Chirp

> A live updating Twitter clone using Phoenix LiveView.

I followed along with Chris McCord's excellent [Build a real-time Twitter clone in 15 minutes with LiveView and Phoenix 1.5](https://www.youtube.com/watch?v=MZvmYaFkNJI) video
and got a neat live-updating Twitter-style timeline working to show a list of posts.

New and updated posts are broadcast to all connected clients. Clicking the Likes or Reposts links increment the counters and broadcast those new values.

## Getting Started

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Install Node.js dependencies with `npm install` inside the `assets` directory
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/posts`](http://localhost:4000/posts) from your browser.
