defmodule Phone do
  @doc """
  Remove formatting from a phone number.

  Returns "0000000000" if phone number is not valid
  (10 digits or "1" followed by 10 digits)

  ## Examples

  iex> Phone.number("123-456-7890")
  "1234567890"

  iex> Phone.number("+1 (303) 555-1212")
  "13035551212"

  iex> Phone.number("867.5309")
  "0000000000"
  """
  @spec number(String.t) :: String.t
  def number(raw) do
    case clean_number_list(raw) do
      nil -> "0000000000"
      y -> to_string y
    end
  end

  defp clean_number_list(s) when is_bitstring(s) do
    s |> to_char_list |> Enum.filter(&(&1 >= ?0 and &1 <= ?9)) |> clean_number_list
  end
  defp clean_number_list(l) when length(l) == 10, do: l
  defp clean_number_list([?1|t]) when length(t) == 10, do: t
  defp clean_number_list(_), do: nil

  @doc """
  Extract the area code from a phone number

  Returns the first three digits from a phone number,
  ignoring long distance indicator

  ## Examples

  iex> Phone.area_code("123-456-7890")
  "123"

  iex> Phone.area_code("+1 (303) 555-1212")
  "303"

  iex> Phone.area_code("867.5309")
  "000"
  """
  @spec area_code(String.t) :: String.t
  def area_code(raw) do
    number(raw) |> String.slice(0, 3)
  end

  @doc """
  Pretty print a phone number

  Wraps the area code in parentheses and separates
  exchange and subscriber number with a dash.

  ## Examples

  iex> Phone.pretty("123-456-7890")
  "(123) 456-7890"

  iex> Phone.pretty("+1 (303) 555-1212")
  "(303) 555-1212"

  iex> Phone.pretty("867.5309")
  "(000) 000-0000"
  """
  @spec pretty(String.t) :: String.t
  def pretty(raw) do
    "(#{area_code(raw)}) #{prefix(raw)}-#{line_number(raw)}"
  end

  @spec prefix(String.t) :: String.t
  defp prefix(raw) do
    number(raw) |> String.slice(3, 3)
  end

  @spec line_number(String.t) :: String.t
  defp line_number(raw) do
    number(raw) |> String.slice(6, 4)
  end
end
