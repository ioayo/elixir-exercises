defmodule Ex3 do
  def caesar([], _), do: []

  def caesar([head | tail], offset) when (head + offset) > 122,
    do: [ (head + offset) - 26 | caesar(tail, offset) ]

  def caesar([head | tail], offset),
    do: [ head + offset | caesar(tail, offset) ]
end

IO.puts Ex3.caesar('ryvkve', 13)
