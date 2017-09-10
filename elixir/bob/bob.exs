defmodule Bob do
  import String

  def hey(input) do
    cond do
      ends_with? input, "?" -> "Sure."
      (upcase input) == input and String.match? input, ~r/\p{Lu}/ -> "Whoa, chill out!"
      (trim input) == "" -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
