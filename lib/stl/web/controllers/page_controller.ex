defmodule Stl.Web.PageController do
  use Stl.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
