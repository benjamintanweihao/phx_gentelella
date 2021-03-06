defmodule PhxGentelellaWeb.Router do
  use PhxGentelellaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxGentelellaWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/form", PageController, :form
    get "/form_wizard", PageController, :form_wizard
    get "/login", PageController, :login
    get "/plain", PageController, :plain
    get "/tables", PageController, :tables
    get "/404", PageController, :page_404
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxGentelellaWeb do
  #   pipe_through :api
  # end
end
