defmodule EjabberdexWeb.PageController do
  use EjabberdexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
