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
      "bpm": 160,
      "measure": "4/4",
      # These are the actual legit notes
      # "roles": ["d6", "b5", "a5", "g5", "d5", "e5", "b4", "a4", "g4"],
      # These are stepped down. Just missing d5 with this version
      "roles": ["b4", "a4", "g4", "d4", "e4", "b3", "a3", "g3", "d5"],
      "notes": [
        %{
          "note": "d5",
          "milliseconds_from_start": 0.0
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 214.2855
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 428.571
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 642.8565
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 857.142
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 3214.2825000000003
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 3428.568
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 3642.8535
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 3857.139
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 4071.4245
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 4285.71
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 6857.136
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 7071.4215
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 7285.707
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 7499.9925
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 7714.278
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 7928.5635
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 8142.849
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 8999.991
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 9428.562
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 10285.704
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 10499.9895
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 10714.275
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 10928.5605
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 11142.846000000001
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 11357.131500000001
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 11571.417000000001
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 12428.559000000001
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 12857.130000000001
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 13285.701000000001
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 13499.9865
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 13714.272
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 13928.5575
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 14142.843
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 14357.1285
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 14571.414
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 16928.554500000002
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 17142.84
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 17357.125500000002
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 17571.411
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 17785.696500000002
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 17999.982
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 19928.5515
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 20142.837
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 20571.408
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 20785.6935
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 20999.979
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 21214.2645
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 21428.55
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 21642.8355
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 21857.121
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 22714.263000000003
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 23142.834000000003
        },
        %{
          "note": "d5",
          "milliseconds_from_start": 23999.976000000002
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 24214.2615
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 24428.547000000002
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 24642.8325
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 24857.118000000002
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 25071.4035
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 25285.689000000002
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 26142.831000000002
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 26571.402000000002
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 26999.973
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 27428.544
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 27857.115
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 28285.686
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 29142.828
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 29999.97
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 30428.541
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 30857.112
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 31285.683
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 31714.254
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 32571.396
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 33214.2525
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 33428.538
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 33857.109000000004
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 34285.68
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 34714.251000000004
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 35142.822
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 35999.964
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 36857.106
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 37285.677
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 37714.248
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 38142.819
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 38357.1045
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 38571.39
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 38999.961
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 39214.2465
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 39428.532
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 39642.817500000005
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 40071.3885
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 41571.387
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 41785.6725
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 41999.958
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 42214.243500000004
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 42428.529
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 42642.8145
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 42857.1
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 43285.671
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 43714.242
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 44142.813
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 44571.384000000005
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 44999.955
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 44999.955
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 45214.2405
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 45428.526000000005
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 45642.8115
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 45857.097
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 46071.3825
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 46285.668000000005
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 46714.239
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 47142.810000000005
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 47571.381
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 47999.952000000005
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 48428.523
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 48857.094000000005
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 49071.3795
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 49285.665
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 49499.9505
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 49714.236000000004
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 50142.807
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 50571.378000000004
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 50999.949
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 51428.520000000004
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 51857.091
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 52071.376500000006
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 52285.662000000004
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 52285.662000000004
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 52499.9475
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 52499.9475
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 52714.233
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 52714.233
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 53357.0895
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 53571.375
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 53571.375
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 53785.660500000005
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 53785.660500000005
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 53999.946
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 53999.946
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 55285.659
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 55714.23
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 55928.5155
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 56142.801
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 56357.086500000005
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 56571.372
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 56999.943
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 57428.514
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 57857.085
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 58285.656
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 58714.227
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 58714.227
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 58928.512500000004
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 59142.798
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 59357.0835
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 59571.369000000006
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 59785.654500000004
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 59999.94
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 60428.511000000006
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 60857.082
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 61285.653000000006
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 61714.224
        },
        %{
          "note": "e4",
          "milliseconds_from_start": 62142.795000000006
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 62142.795000000006
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 62357.080500000004
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 62571.366
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 62785.6515
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 62999.937000000005
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 63214.2225
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 63428.508
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 63857.079000000005
        },
        %{
          "note": "d4",
          "milliseconds_from_start": 64285.65
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 64714.221000000005
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 65142.792
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 65571.363
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 65785.6485
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 65999.93400000001
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 65999.93400000001
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 66214.2195
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 66214.2195
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 66428.505
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 66428.505
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 67071.3615
        },
        %{
          "note": "a4",
          "milliseconds_from_start": 67285.647
        },
        %{
          "note": "a3",
          "milliseconds_from_start": 67285.647
        },
        %{
          "note": "b4",
          "milliseconds_from_start": 67499.93250000001
        },
        %{
          "note": "b3",
          "milliseconds_from_start": 67499.93250000001
        },
        %{
          "note": "g4",
          "milliseconds_from_start": 67714.21800000001
        },
        %{
          "note": "g3",
          "milliseconds_from_start": 67714.21800000001
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
