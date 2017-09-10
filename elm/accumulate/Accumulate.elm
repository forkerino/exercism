module Accumulate exposing (accumulate)

accumulate : (a -> b) -> List a -> List b
accumulate fn lst =
  case lst of
    hd::tl -> fn hd :: accumulate fn tl
    [] -> []
