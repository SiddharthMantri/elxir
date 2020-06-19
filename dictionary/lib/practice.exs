defmodule Practice do
    def func({ a, b }) do
        IO.puts "a = #{a}, b = #{b}"
    end
    def func2(t = { a, b }) do
        IO.puts "a = #{a}, b = #{b}, is_tuple{t}"
    end
    def swap_tuple(t = {a, b}) do
        t = {b,a}
    end
    def is_equal(a, a) do
        IO.puts "true"
    end
    def is_equal(a, b) do
        IO.puts "false"
    end
end
