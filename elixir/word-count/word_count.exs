defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: HashDict.t
  def count(sentence) do
    Regex.scan(~r/\w(?:[-\w]*)?/, sentence)
      |> List.flatten
      |> Enum.map(fn(x) -> String.downcase(x) end)
      |> Enum.reduce(HashDict.new, fn(w, memo) ->
           Dict.put(memo, w, cond do
             Dict.has_key?(memo, w) -> memo[w]
             true -> 0
           end + 1)
         end)
  end
end
