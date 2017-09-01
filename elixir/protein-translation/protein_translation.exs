defmodule ProteinTranslation do
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: { atom,  list(String.t()) }
  def of_rna(rna) do
    codons = rna 
    |> String.codepoints
    |> Enum.chunk(3)
    |> Enum.map(&Enum.join/1)
    |> Enum.map(&ProteinTranslation.of_codon/1)
    |> Enum.map(&(Tuple.delete_at(&1,0)))
    |> Enum.map(fn(x)-> elem(x,0) end)
    |> Enum.take_while(fn(x)-> x !== "STOP" end)
    
    cond do
      "invalid codon" in codons -> {:error,  "invalid RNA" }
      true -> {:ok, codons}
    end
  end

  @doc """
  Given a codon, return the corresponding protein
  """

  @spec of_codon(String.t()) :: { atom, String.t() }
  def of_codon(codon) do
    proteins = %{ "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UGG" => "Tryptophan",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"} 
    cond do
      Map.has_key?(proteins, codon) -> {:ok,proteins[codon]}
      true ->  {:error, "invalid codon"}
    end
  end
end

