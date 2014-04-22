defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  # 
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically important`) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(l), do: do_count(l, 0)

  defp do_count([], acc), do: acc
  defp do_count([_|t], acc), do: do_count(t, acc + 1)

  @spec reverse(list) :: list
  def reverse(l), do: do_reverse(l, [])

  defp do_reverse([], acc), do: acc
  defp do_reverse([head|tail], acc), do: do_reverse(tail, [head|acc])

  @spec map(list, (any -> any)) :: list
  def map(l, f), do: do_map(l, f, [])

  defp do_map([], f, accm), do: reverse(accm)
  defp do_map([h|t], f, accm), do: do_map(t, f, [f.(h)|accm])

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f), do: do_filter(l, f, [])

  defp do_filter([], _, accm), do: reverse(accm)
  defp do_filter([h|t], f, accm) do
    if f.(h) do
      do_filter(t, f, [h|accm])
    else
      do_filter(t, f, accm)
    end
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do

  end

  @spec append(list, list) :: list
  def append(a, b) do

  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do

  end
end
