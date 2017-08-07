defmodule PhxGentelellaWeb.PageController do
  use PhxGentelellaWeb, :controller

  def index(conn, _params) do
    render conn, "plain.html"
  end
end
