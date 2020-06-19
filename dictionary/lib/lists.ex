defmodule Lists do
    def len([]), do: 0
    def len([_h | t ]), do: 1 + len(t)

    def sum([]), do: 0
    def sum([h | t]), do: h + sum(t)

    def double([]), do: []
    def double([h | t]), do: [ h*2 | double(t) ]

    def square([]), do: []
    def square([h | t]), do: [h*h |  square(t)]

    def map([], _fnc), do: [] # Equivalent to a function and callback in JS
    def map([h | t], fnc) do
        [fnc.(h) | map(t, fnc)]
    end

    def even_length([]), do: true  
    def even_length([_head | tail]), do: !even_length(tail)

    def sum_pairs([]), do: []
    def sum_pairs([h1, h2 | t]), do: [ h1 + h2 | sum_pairs(t) ]

    
end
