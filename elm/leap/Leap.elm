module Leap exposing (..)

isLeapYear : Int -> Bool
isLeapYear year =
  if rem year 400 == 0 then
    True
  else if rem year 100 == 0 then
    False
  else if rem year 4 == 0 then
    True
  else
    False
