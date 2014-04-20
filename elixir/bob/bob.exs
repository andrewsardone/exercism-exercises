defmodule Teenager do
  def hey(input) do
    cond do
      String.strip(input) == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") -> "Sure."
      String.upcase(input) == input && Regex.run(%r/\p{L}/, input) -> "Woah, chill out!"
      true -> "Whatever."
    end
  end
end
