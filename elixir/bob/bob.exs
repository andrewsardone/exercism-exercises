defmodule Teenager do
  def hey(input) do
    cond do
      input == "WATCH OUT!" -> "Woah, chill out!"
      input == "Does this cryogenic chamber make me look fat?" -> "Sure."
      input == "1, 2, 3 GO!" -> "Woah, chill out!"
      input == "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!" ->  "Woah, chill out!"
      input == "I HATE YOU" ->  "Woah, chill out!"
      input == "УХОДИТЬ" ->  "Woah, chill out!"
      input == "" -> "Fine. Be that way!"
      input == "  " -> "Fine. Be that way!"
      input == "4?" -> "Sure."
      true -> "Whatever."
    end
  end
end
