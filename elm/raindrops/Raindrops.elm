module Raindrops exposing (raindrops)

import List exposing (foldr)


raindrops : Int -> String
raindrops drop =
  let
    divisibleBy =
      \(divisor, sound) sounds ->
        if rem drop divisor == 0 then
          sound ++ sounds
        else
          sounds

    result =
      foldr divisibleBy "" options
  in
    if result == "" then
      toString drop
    else
      result


options : List (number, String)
options =
  [ ( 3, "Pling" ),
    ( 5, "Plang" ),
    ( 7, "Plong" )
  ]
