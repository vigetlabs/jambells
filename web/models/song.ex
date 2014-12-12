defmodule Song do
  def notes_for(song_name) do
    case song_name do
      "jinglebells" ->
        jinglebells
      "deck_the_halls" ->
        deck_the_halls
      "we_wish_you" ->
        we_wish_you
      "sequence" ->
        sequence
    end
  end

  defp jinglebells do
    json_parse %{
      "name": "Jingle Bells",
      "bpm": 125,
      "measure": "4/4",
      "roles": ["E4", "F4", "G4", "D4", "C4"],
      "notes": [
        %{
          "note": "E4",
          "milliseconds_from_start": 0
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 480
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 960
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 1920
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 2400
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 2880
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 3840
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 4320
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 4800
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 5520
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 5760
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 7680
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 8160
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 8640
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 9360
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 9600
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 10080
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 10560
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 11040
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 11280
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 11520
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 12000
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 12480
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 12960
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 13440
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 14400
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 15360
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 15840
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 16320
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 17280
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 17760
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 18240
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 19200
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 19680
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 20160
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 20880
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 21120
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 23040
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 23520
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 24000
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 24480
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 24960
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 25440
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 25920
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 26400
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 26640
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 26880
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 27360
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 27840
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 28320
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 28800
        }
      ]
    }
  end

  defp deck_the_halls do
    json_parse %{
      "name": "Deck the Halls",
      "bpm": 125,
      "measure": "4/4",
      "roles": ["A3", "B3", "G3", "C4", "D4", "E4", "F3s", "F4s", "G4"],
      "notes": [
        %{
          "note": "D4",
          "milliseconds_from_start": 0
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 720
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 960
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 1440
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 1920
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 2400
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 2880
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 3360
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 3840
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 4080
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 4320
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 4560
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 4800
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 5520
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 5760
        },
        %{
          "note": "F3s",
          "milliseconds_from_start": 6240
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 6720
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 7680
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 8400
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 8640
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 9120
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 9600
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 10080
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 10560
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 11040
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 11520
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 11760
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 12000
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 12240
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 12480
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 13200
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 13440
        },
        %{
          "note": "F3s",
          "milliseconds_from_start": 13920
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 14400
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 15360
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 16080
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 16320
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 16800
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 17280
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 18000
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 18240
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 18720
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 19200
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 19440
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 19680
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 20160
        },
        %{
          "note": "F4s",
          "milliseconds_from_start": 20400
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 20640
        },
        %{
          "note": "F4s",
          "milliseconds_from_start": 21120
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 21600
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 22080
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 23040
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 23760
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 24000
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 24480
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 24960
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 25440
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 25920
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 26400
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 26880
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 27120
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 27360
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 27600
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 27840
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 28560
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 28800
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 29280
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 29760
        }
      ]
    }
  end

  defp we_wish_you do
    json_parse %{
      "name": "We Wish You a Merry Christmas",
      "bpm": 125,
      "measure": "3/4",
      "roles": ["C4", "G3", "D4", "A3", "B3", "E4", "F4", "G4"],
      "notes": [
        %{
          "note": "G3",
          "milliseconds_from_start": 0
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 480
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 960
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 1200
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 1440
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 1680
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 1920
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 2400
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 2880
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 3360
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 3840
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 4080
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 4320
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 4560
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 4800
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 5280
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 5760
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 6240
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 6720
        },
        %{
          "note": "F4",
          "milliseconds_from_start": 6960
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 7200
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 7440
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 7680
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 8160
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 8640
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 8880
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 9120
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 9600
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 10080
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 10560
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 11520
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 12000
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 12480
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 12960
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 13440
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 14400
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 14880
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 15360
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 15840
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 16320
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 17280
        },
        %{
          "note": "E4",
          "milliseconds_from_start": 17760
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 18240
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 18720
        },
        %{
          "note": "G4",
          "milliseconds_from_start": 19200
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 19680
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 20160
        },
        %{
          "note": "G3",
          "milliseconds_from_start": 20400
        },
        %{
          "note": "A3",
          "milliseconds_from_start": 20640
        },
        %{
          "note": "D4",
          "milliseconds_from_start": 21120
        },
        %{
          "note": "B3",
          "milliseconds_from_start": 21600
        },
        %{
          "note": "C4",
          "milliseconds_from_start": 22080
        }
      ]
    }
  end

  defp sequence do
    json_parse %{
      "name": "Sequence",
      "bpm": 50,
      "measure": "4/4",
      "roles": [],
      "notes": [
        "C3",
        "",
        "C3s",
        "",
        "D3",
        "",
        "D3s",
        "",
        "E3",
        "",
        "F3",
        "",
        "F3s",
        "",
        "G3",
        "",
        "G3s",
        "",
        "A3",
        "",
        "A3s",
        "",
        "B3",
        "",
        # octave
        "C4",
        "",
        "C4s",
        "",
        "D4",
        "",
        "D4s",
        "",
        "E4",
        "",
        "F4",
        "",
        "F4s",
        "",
        "G4",
        "",
        "G4s",
        "",
        "A4",
        "",
        "A4s",
        "",
        "B4",
        "",
        # octave
        "C5",
        ""
      ]
    }
  end

  defp json_parse(input) do
    {:ok, encoded} = JSON.encode(input)
    encoded
  end
end
