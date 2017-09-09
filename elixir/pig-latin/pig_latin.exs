defmodule PigLatin do
  @doc """
  Given a `phrase`, translate it a word at a time to Pig Latin.

  Words beginning with consonants should have the consonant moved to the end of
  the word, followed by "ay".

  Words beginning with vowels (aeiou) should have "ay" added to the end of the
  word.

  Some groups of letters are treated like consonants, including "ch", "qu",
  "squ", "th", "thr", and "sch".

  Some groups are treated like vowels, including "yt" and "xr".
  """
  @spec translate(phrase :: String.t()) :: String.t()
  def translate(phrase) do
    phrase
    |> String.split(" ")
    |> Enum.map(&PigLatin.translate_word/1)
    |> Enum.join(" ")
  end

  def translate_word("a"<>word) do "a"<>word <> "ay" end
  def translate_word("e"<>word) do "e"<>word <> "ay" end
  def translate_word("i"<>word) do "i"<>word <> "ay" end
  def translate_word("o"<>word) do "o"<>word <> "ay" end
  def translate_word("u"<>word) do "u"<>word <> "ay" end
  def translate_word("yt"<>word) do "yt"<> word <> "ay" end
  def translate_word("xr"<>word) do "xr"<>word <> "ay" end
  def translate_word("ch"<>word) do word <> "chay" end
  def translate_word("qu"<>word) do word <> "quay" end
  def translate_word("squ"<>word) do word <> "squay" end
  def translate_word("sch"<>word) do word <> "schay" end
  def translate_word("thr"<>word) do word <> "thray" end
  def translate_word("th"<>word) do word <> "thay" end
  def translate_word(word) do String.slice(word, 1..-1) <> String.first(word) <> "ay" end
end
