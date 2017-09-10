module Triangle exposing (..)

type Triangle =
  Equilateral | Isosceles | Scalene

version : Int
version =
    2

triangleKind : Float -> Float -> Float -> Result String Triangle
triangleKind a b c =
  if a * b * c == 0 || a < 0 || b < 0 || c < 0 then
    Err "Invalid lengths"
  else if (a + b < c) || (b+c < a) || (a+c < b) then
    Err "Violates inequality"
  else if (a == b) && (b == c) then
    Ok Equilateral
  else if (a==b) || (b==c) || (a==c) then
    Ok Isosceles
  else
    Ok Scalene
