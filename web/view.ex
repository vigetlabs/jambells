defmodule DingMyBells.View do
  use Phoenix.View, root: "web/templates"

  using do
    import DingMyBells.I18n
    import DingMyBells.Router.Helpers

    use Phoenix.HTML
  end

  def pretty(song_key) do
    case song_key do
      "jinglebells" ->
        "Jingle Bells"
      "deck_the_halls" ->
        "Deck the Halls"
      "we_wish_you" ->
        "We Wish You a Merry Christmass"
    end
  end
end
