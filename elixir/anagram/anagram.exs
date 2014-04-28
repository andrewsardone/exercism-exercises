defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    Enum.filter(candidates, fn(x) -> is_anagram?(base, x) end)
  end

  defp is_anagram?(word1, word2) do
    comparable(word1) == comparable(word2)
  end

  defp comparable(w), do: String.split(w, "") |> Enum.sort
end
