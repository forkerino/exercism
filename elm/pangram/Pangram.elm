module Pangram exposing (isPangram)

import String exposing (toLower, split, contains)
import List exposing (all, member, singleton)

isPangram : String -> Bool
isPangram str =
  str
  |> toLower
  |> containsAllLetters

containsAllLetters : String -> Bool
containsAllLetters str =
  "abcdefghijklmnopqrstuvwxyz"
  |> split ""
  |> all (containsLetter str)

containsLetter : String -> String -> Bool
containsLetter str letter =
  contains letter str
