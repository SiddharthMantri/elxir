
defmodule Dictionary do
  
  alias Dictionary.WordList

  defdelegate random_word(), to: WordList
  
#   def random_word() do
#         word_list()
#         |>  Enum.random()
#     end
  
#     def word_list do
#         "../assets/words.txt"
#         |>  Path.expand(__DIR__)
#         |>  File.read!() ## Same as File.read!("file.txt")
#         |>  String.split(~r/\n/)
#     end

end