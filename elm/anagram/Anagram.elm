module Anagram exposing (detect)

detect : String -> List String -> List String
detect word wordList =
  wordList
  |> List.filter (\w -> isAnagram (String.toLower word) (String.toLower w))


isAnagram : String -> String -> Bool
isAnagram word1 word2 =
  sortLetters word1 == sortLetters word2 && word1 /= word2


sortLetters : String -> String
sortLetters word =
  word
  |> String.split ""
  |> List.sort
  |> String.join ""
