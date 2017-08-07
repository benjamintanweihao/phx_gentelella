defmodule PhxGentelellaWeb.PageController do
  use PhxGentelellaWeb, :controller

  def index(conn, _params) do
    render conn, "plain.html"
  end

  def login(conn, _params) do
    conn = put_layout conn, false
    render conn, "login.html"
  end
end
