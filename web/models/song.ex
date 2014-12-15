defmodule Song do
  def notes_for(song_name) do
    case song_name do
      "jinglebells" ->
        jinglebells
      "deck_the_halls" ->
        deck_the_halls
      "we_wish_you" ->
        we_wish_you
      "shake_it_off" ->
        shake_it_off
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

  defp shake_it_off do
    json_parse%{
      "name": "Shake it off",
      "bpm": 120,
      "measure": "4/4",
      "roles": [ "d4","b4","a4","g4","d4","e4","b3"],
      "notes": [
        %{
          "note": "d4",
          "milliseconds_from_start": 7000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 7250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 7500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 7750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 8000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 10750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 11000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 11250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 11500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 11750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 12000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 15000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 15250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 15500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 15750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 16000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 16250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 16500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 17500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 18000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 19000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 19250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 19500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 19750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 20000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 20250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 20500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 21500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 22000.0
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 22500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 22750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 23000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 23250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 23500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 23750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 24000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 26750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 27000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 27250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 27500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 27750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 28000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 30250.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 30500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 31000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 31250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 31500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 31750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 32000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 32250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 32500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 33500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 34000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 35000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 35250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 35500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 35750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 36000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 36250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 36500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 37500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 38000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 38500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 39000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 39500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 40000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 41000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 42000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 42500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 43000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 43500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 44000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 45000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 45750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 46000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 46500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 47000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 47500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 48000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 49000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 50000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 50500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 51000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 51500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 51750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 52000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 52500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 52750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 53000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 53250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 53750.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 55500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 55750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 56000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 56250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 56500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 56750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 57000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 59500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 59750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 60000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 60250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 60500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 60750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 61000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 64000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 64250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 64500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 64750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 65000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 67750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 68000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 68250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 68500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 69250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 69500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 69750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 70000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 71500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 72000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 72250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 72500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 72750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 73000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 75500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 75750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 76000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 76250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 76500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 76750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 77000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 79500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 79750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 80000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 80250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 80500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 80750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 81000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 83750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 84000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 84250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 84500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 85250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 85500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 85750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 86000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 86750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 87000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 87250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 87500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 87750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 88000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 90750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 91000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 91250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 91500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 91750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 92000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 94750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 95000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 95250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 95500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 95750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 96000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 96250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 96500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 97500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 98000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 99000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 99250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 99500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 99750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 100000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 100250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 100500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 101500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 102000.0
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 102500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 102750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 103000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 103250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 103500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 103750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 104000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 106250.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 106500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 106750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 107000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 107250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 107500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 107750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 108000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 110750.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 111000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 111250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 111500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 111750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 112000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 112250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 112500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 113500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 114000.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 115000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 115250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 115500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 115750.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 116000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 116250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 116500.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 117500.0
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 118000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 118500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 119000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 119500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 120000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 121000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 122000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 122500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 123000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 123500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 124000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 125000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 126000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 126500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 127000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 127500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 128000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 129000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 130000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 130500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 131000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 131500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 131750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 132000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 132500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 132750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 133000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 133250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 133750.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 135500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 135750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 136000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 136250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 136500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 136750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 137000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 139500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 139750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 140000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 140250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 140500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 140750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 141000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 144000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 144250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 144500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 144750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 145000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 147750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 148000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 148250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 148500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 149250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 149500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 149750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 150000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 151500.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 152000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 152250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 152500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 152750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 153000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 155500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 155750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 156000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 156250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 156500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 156750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 157000.0
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 159500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 159750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 160000.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 160250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 160500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 160750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 161000.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 163750.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 164000.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 164250.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 164500.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 165250.0
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 165500.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 165750.0
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 166000.0
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
