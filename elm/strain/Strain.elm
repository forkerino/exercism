module Strain exposing (keep, discard)

keep : (a -> Bool) -> List a -> List a
keep fn list =
  case list of
    hd::tl ->
      if fn hd then
        hd :: keep fn tl
      else
        keep fn tl
    [] -> []

discard : (a -> Bool) -> List a -> List a
discard fn list =
  case list of
    hd::tl ->
      if fn hd then
        discard fn tl
      else
        hd :: discard fn tl
    [] -> []
