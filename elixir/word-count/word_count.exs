defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: HashDict.t
  def count(sentence) do
    sentence |> collect_words |> count_words
  end

  defp collect_words(sentence) do
    Regex.scan(~r/[\pL\pN-]+/, String.downcase(sentence)) |> List.flatten
  end

  defp count_words(words) do
    Enum.reduce(words, HashDict.new, fn(w, memo) ->
      Dict.put(memo, w, cond do
        Dict.has_key?(memo, w) -> memo[w]
        true -> 0
      end + 1)
    end)
  end
end
