defmodule DNA do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> DNA.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    do_dna_rna_conversion(dna)
  end

  defp do_dna_rna_conversion([]), do: []
  defp do_dna_rna_conversion([h|t]) do
    [case h do
       ?G -> ?C
       ?C -> ?G
       ?T -> ?A
       ?A -> ?U
     end|do_dna_rna_conversion(t)]
  end
end
