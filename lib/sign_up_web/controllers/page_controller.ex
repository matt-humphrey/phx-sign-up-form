defmodule SignUpWeb.PageController do
  use SignUpWeb, :controller

  alias SignUp.User

  def index(conn, _params) do
    IO.inspect(conn.params)
    render(conn, "index.html")
  end

  def submit(conn, _params) do
    case User.new(conn.params) do
      {:ok, data} ->
        text(conn, "Welcome, #{data.username}!")
      {:error, message} ->
        text(conn, inspect(message.errors))
    end
  end

  # defp error_message(
end
