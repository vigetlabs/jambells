defmodule DingMyBells.LayoutView do
  use DingMyBells.View

  def stylesheet_path(file_name) do
    {:ok, files} = File.ls("priv/static/css")

    matches = Enum.filter files, fn(file) ->
      String.match? file, ~r/#{file_name}.*\.css/
    end

    "/css/#{List.first(matches)}"
  end

  def javascript_path(file_name) do
    {:ok, files} = File.ls("priv/static/js")

    matches = Enum.filter files, fn(file) ->
      String.match? file, ~r/#{file_name}.*\.js/
    end

    "/js/#{List.first(matches)}"
  end
end
