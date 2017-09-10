module SpaceAge exposing (..)

type Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune


ageOn : Planet -> Int -> Float
ageOn planet seconds =
  let
    years = secondsToYears seconds
  in
    case planet of
      Mercury -> years / 0.2408467
      Venus -> years / 0.61519726
      Earth -> years
      Mars -> years / 1.8808158
      Jupiter -> years / 11.862615
      Saturn -> years / 29.447498
      Uranus -> years / 84.016846
      Neptune -> years / 164.79132


secondsToYears : Int -> Float
secondsToYears seconds =
  toFloat seconds / 31557600
