defmodule Ex2 do

  def max([]), do: nil

  def max([a]), do: a

  def max([a, b]) when a > b, do: a

  def max([_, b]), do: b

  def max([head | tail]), do: max([head, max(tail)])
end
