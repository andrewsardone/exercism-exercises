defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    Enum.filter(candidates, &is_anagram?(String.downcase(base), String.downcase(&1)))
  end

  defp is_anagram?(w, w), do: false
  defp is_anagram?(word1, word2), do: comparable(word1) == comparable(word2)

  defp comparable(w), do: String.split(w, "") |> Enum.sort
end
