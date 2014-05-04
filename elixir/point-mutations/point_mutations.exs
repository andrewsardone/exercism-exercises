defmodule DNA do
  @doc """
  Returns number of differences between two strands of DNA, known as the Hamming Distance.

  ## Examples

  iex> DNA.hamming_distance('AAGTCATA', 'TAGCGATC')
  4
  """
  @spec hamming_distance([char], [char]) :: non_neg_integer
  def hamming_distance(strand1, strand2) do
    calc_hamming_distance(strand1, strand2, 0)
  end

  defp calc_hamming_distance([], _, accm), do: accm
  defp calc_hamming_distance(_, [], accm), do: accm
  defp calc_hamming_distance([h|t1], [h|t2], accm) do
    calc_hamming_distance t1, t2, accm
  end
  defp calc_hamming_distance([_|t1], [_|t2], accm) do
    calc_hamming_distance t1, t2, accm+1
  end
end
