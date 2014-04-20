defmodule Teenager do
  def hey(input) do
    cond do
      is_empty?(input)      -> "Fine. Be that way!"
      is_a_question?(input) -> "Sure."
      is_yelling?(input)    -> "Woah, chill out!"
      true                  -> "Whatever."
    end
  end

  defp is_empty?(s), do: String.strip(s) == ""

  defp is_a_question?(s), do: String.ends_with?(s, "?")

  defp is_yelling?(s) do
    String.upcase(s) == s && Regex.run(%r/\p{L}/, s)
  end
end
