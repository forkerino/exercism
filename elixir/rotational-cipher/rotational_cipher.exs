defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |>to_charlist
    |>Enum.map(&shiftLetter(&1,shift))
    |>to_string
  end

  def shiftLetter(char,shift) when char in (?a..?z) do
    cond do
      char+rem(shift,26) in (?a..?z) -> char+rem(shift,26)
      true -> char+rem(shift,26)-26
    end
  end

  def shiftLetter(char, shift) when char in (?A..?Z) do
    cond do
      char+rem(shift,26) in (?A..?Z) -> char+rem(shift,26)
      true -> char+rem(shift,26)-26
    end 
  end

  def shiftLetter(char, _), do: char
end
