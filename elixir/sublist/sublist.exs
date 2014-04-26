defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    case { length(a), length(b) } do
      { la, lb } when la < lb ->
        :sublist
      { la, lb } when la > lb ->
        :superlist
      { la, lb } when la == lb ->
        if a == b, do: :equal, else: :unequal
    end
  end
end
