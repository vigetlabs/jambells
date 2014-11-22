defmodule DingMyBells.View do
  use Phoenix.View, root: "web/templates"

  using do
    import DingMyBells.I18n
    import DingMyBells.Router.Helpers

    use Phoenix.HTML

    alias Phoenix.Controller.Flash
  end

  def pretty(song_key) do
    String.replace(song_key, "_", " ") |> String.capitalize
  end
end
