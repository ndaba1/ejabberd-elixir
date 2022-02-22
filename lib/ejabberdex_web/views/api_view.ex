defmodule EjabberdexWeb.ApiView do
  use EjabberdexWeb, :view

  def render("index.json", %{status: stat, msg: msg}) do
    %{status: stat, message: msg}
  end

  def render("index.json", _) do
    %{status: "error"}
  end
end
