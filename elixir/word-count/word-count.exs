defmodule Words do
  def count(sentence) do
    sentence = String.downcase(sentence)
    words = Regex.split(%r/\W+/, sentence)

    Enum.reduce words, HashDict.new, fn(word, counts) ->
      HashDict.update counts, word, 1, fn(val) -> val + 1 end
    end
  end
end
