module Bob exposing (..)

import String
import Char

hey: String -> String
hey input =
    if String.toUpper input == input && String.any Char.isUpper input then
        "Whoa, chill out!"
    else if String.endsWith "?" input then
        "Sure."
    else if String.trim input == "" then
        "Fine. Be that way!"
    else
        "Whatever."
