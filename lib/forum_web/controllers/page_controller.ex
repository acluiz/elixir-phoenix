defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  @spec users(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def users(conn, _params) do
    users = [
      %{ id: 1, name: "Alice", email: "alice@mail.com"},
      %{ id: 1, name: "Bob", email: "bob@mail.com"},
      %{ id: 1, name: "John", email: "john@mail.com"},
      %{ id: 1, name: "Julia", email: "julia@mail.com"}
    ]

    # render(conn, :users, users: users)
    json(conn, %{ users: users })
  end
end
