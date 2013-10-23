defmodule Teenager do
  def hey(message) do
    cond do
      silence?(message)  -> "Fine. Be that way!"
      question?(message) -> "Sure."
      shouting?(message) -> "Woah, chill out!"
      true               -> "Whatever."
    end
  end

  defp question?(message) do
    String.ends_with?(message, "?")
  end

  defp shouting?(message) do
    message == String.upcase(message)
  end

  defp silence?(message) do
    String.strip(message) == ""
  end
end
