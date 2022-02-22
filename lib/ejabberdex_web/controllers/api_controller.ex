defmodule EjabberdexWeb.ApiController do
  use EjabberdexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end

  def handle(conn, params) do

    %{"name" => name} = params

    message = case :ejabberd_auth.try_register(name, "localhost", name) do
      :ok -> %{status: "Success", msg: "Your account has been successfully created"}
      {:error, :exists} -> %{status: "Failed", msg: "Failed to create account. Username already exists"}
      _ -> %{status: "Failed", msg: "An internal error occurred, try again later"}
    end

    render(conn, "index.json", message)
  end
end
