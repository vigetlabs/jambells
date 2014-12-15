defmodule DingMyBells.View do
  use Phoenix.View, root: "web/templates"

  using do
    use Phoenix.HTML
  end

  def pretty(song_key) do
    case song_key do
      "jinglebells" ->
        "Jingle Bells"
      "deck_the_halls" ->
        "Deck the Halls"
      "shake_it_off" ->
        "Shake it Off"
      "we_wish_you" ->
        "We Wish You a Merry Christmass"
    end
  end
end
