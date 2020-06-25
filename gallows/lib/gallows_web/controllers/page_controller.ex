defmodule GallowsWeb.PageController do
  use GallowsWeb, :controller

  def index(conn, _params) do
    my_assings = %{produce: "pear", count: 3}
    render(conn, "index.html", my_assings)
  end
end
