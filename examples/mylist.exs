defmodule MyList do

  def map([], _func), do: []

  def map([head | tail], func) do
    [ func.(head) | map(tail, func) ]
  end

  def reduce([], value, _func), do: value

  def reduce([head|tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
end
