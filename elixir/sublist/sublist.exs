defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    case { length(a), length(b) } do
      { len_a, len_b } when len_a < len_b ->
        if is_sublist?(a, b, len_a, len_b), do: :sublist, else: :unequal
      { len_a, len_b } when len_a > len_b ->
        if is_sublist?(b, a, len_b, len_a), do: :superlist, else: :unequal
      _ ->
        if a == b, do: :equal, else: :unequal
    end
  end

  # Returns true if the first list is a sublist of the second second list,
  # using pattern matching testing for:
  #   1. The first list is empty condition
  #   2. Heads of the two lists are equal, so we'll recursively test the tails
  #   3. The final catch-all condition that will return false because we didn't
  #      have, at least, equal hads
  defp is_sublist?([], _), do: true
  defp is_sublist?([h|ta], [h|tb]), do: is_sublist?(ta, tb)
  defp is_sublist?(_, _), do: false

  # The controller function delegates to is_sublist?/2 for recursive head/tail
  # checking, but by decrementing the len_b parameter and checking if the
  # result is less than len_a, it sets up a guard to return false.
  defp is_sublist?(_, _, len_a, len_b) when len_a > len_b, do: false
  defp is_sublist?(a, b, len_a, len_b) do
    if is_sublist?(a, b) do
      true
    else
      [_|tail_b] = b
      is_sublist?(a, tail_b, len_a, len_b-1)
    end
  end
end
