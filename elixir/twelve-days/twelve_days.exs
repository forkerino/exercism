defmodule TwelveDays do
  @doc """
  Given a `number`, return the song's verse for that specific day, including
  all gifts for previous days in the same line.
  """
  @spec verse(number :: integer) :: String.t()
  def verse(number) do
    numbers = %{
      1 => "first",
      2 => "second",
      3 => "third",
      4 => "fourth",
      5 => "fifth",
      6 => "sixth",
      7 => "seventh",
      8 => "eighth",
      9 => "ninth",
      10 => "tenth",
      11 => "eleventh",
      12 => "twelfth"
    }

    "On the #{numbers[number]} day of Christmas my true love gave to me, #{allGifts(number)}."
  end

  @doc """
  Given a `number`, return the gifts for this verse.
  properly formatted, of course
  """
  @spec allGifts(number :: integer) :: String.t()
  def allGifts(number) do
    gifts = %{
      1 => "a Partridge in a Pear Tree",
      2 => "two Turtle Doves",
      3 => "three French Hens",
      4 => "four Calling Birds",
      5 => "five Gold Rings",
      6 => "six Geese-a-Laying",
      7 => "seven Swans-a-Swimming",
      8 => "eight Maids-a-Milking",
      9 => "nine Ladies Dancing",
      10 => "ten Lords-a-Leaping",
      11 => "eleven Pipers Piping",
      12 => "twelve Drummers Drumming"
    }

    cond do
      number == 1 -> gifts[1]
      number == 2 -> "#{gifts[2]}, and #{gifts[1]}"
      true -> "#{gifts[number]}, #{allGifts(number-1)}"
    end
  end

  @doc """
  Given a `starting_verse` and an `ending_verse`, return the verses for each
  included day, one per line.
  """
  @spec verses(starting_verse :: integer, ending_verse :: integer) :: String.t()
  def verses(starting_verse, ending_verse) do
    cond do
      starting_verse < ending_verse -> "#{verse(starting_verse)}\n#{verses(starting_verse+1, ending_verse)}"
      starting_verse == ending_verse -> verse(ending_verse)
    end
  end

  @doc """
  Sing all 12 verses, in order, one verse per line.
  """
  @spec sing():: String.t()
  def sing do
    verses(1,12)
  end
end
