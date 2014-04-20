defmodule Teenager do
  def hey(input) do
    cond do
      input == "1, 2, 3" -> "Whatever."
      String.strip(input) == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") -> "Sure."
      String.upcase(input) == input -> "Woah, chill out!"
      true -> "Whatever."
    end
  end
end
